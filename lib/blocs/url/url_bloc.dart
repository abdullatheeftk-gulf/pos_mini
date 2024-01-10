import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/repository/api_repository.dart';
import 'package:pos_mini/repository/shared_preferences_repository.dart';
import 'package:pos_mini/util/api_error.dart';

part 'url_event.dart';

part 'url_state.dart';

class UrlBloc extends Bloc<UrlEvent, UrlState> {
  final ApiRepository apiRepository;
  final SharedPreferencesRepository sharedPreferencesRepository;

  UrlBloc(
      {required this.apiRepository, required this.sharedPreferencesRepository})
      : super(UrlInitial(),
  ) {
    on<SetBaseUrlEvent>(_setBaseUrlEvent);
  }

  FutureOr<void> _setBaseUrlEvent(SetBaseUrlEvent event, Emitter<UrlState> emit) async{
    emit(SetBaseUrlApiFetchingStartedState());

    final baseUrl = event.baseUrl;
    final result = await apiRepository.getWelcomeMessage(baseUrl);

    if(result is ApiError){
      emit(SetBaseUrlApiFetchingFailedState(apiError: result));
      emit(SetBaseUrlFailedState(apiError: result));
      return;
    }

    final status = await sharedPreferencesRepository.setBaseUrl(baseUrl);
    print(status);

    emit(SetBaseUrlSuccessState());
    emit(SetBaseUrlNavigateToLoginScreenState());

  }
}
