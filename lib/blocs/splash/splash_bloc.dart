import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/repository/api_repository/api_repository.dart';
import 'package:pos_mini/repository/shared_preferences_repository.dart';
import 'package:pos_mini/util/api_error.dart';



part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final ApiRepository apiRepository;
  final SharedPreferencesRepository sharedPreferencesRepository;
  SplashBloc({required this.sharedPreferencesRepository, required this.apiRepository}) : super(SplashInitial()) {

    on<FetchWelcomeMessageEvent>(_fetchWelcomeMessageEvent);

  }

  FutureOr<void> _fetchWelcomeMessageEvent(FetchWelcomeMessageEvent event, Emitter<SplashState> emit) async{


    emit(SplashApiFetchingStartedState());

    final baseUrl = await sharedPreferencesRepository.getBaseUrl();

    final result = await apiRepository.getWelcomeMessage(baseUrl);

    if(result is ApiError){
      emit(SplashApiFetchingFailedState(apiError: result));
      emit(SplashWelcomeMessageFetchFailedState(apiError: result));
      return;
    }

    emit(SplashWelcomeMessageFetchSuccessState(welcomeMessage: result));

    await Future.delayed(const Duration(seconds: 5));
    emit(SplashNavigateToLoginScreenState());
  }
}
