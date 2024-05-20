import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/repository/api_repository/api_repository.dart';
import 'package:pos_mini/repository/shared_preferences_repository.dart';
import 'package:pos_mini/util/api_error/api_error.dart';




part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final ApiRepository apiRepository;
  final SharedPreferencesRepository sharedPreferencesRepository;
  //int value = 0;
  SplashBloc({required this.sharedPreferencesRepository, required this.apiRepository}) : super(SplashInitial())  {

    on<FetchWelcomeMessageEvent>(_fetchWelcomeMessageEvent);
    /*Future.doWhile(() async{
      value++;
      printWarning("repeat $value");
      await Future.delayed(const Duration(seconds: 1));
      if(value == 10){
        return false;
      }else{
        return true;
      }
    });*/

  }




  @override
  Future<Function> close() async{
    //printWarning("splash bloc closed");
    super.close();
    return (){};
  }

  FutureOr<void> _fetchWelcomeMessageEvent(FetchWelcomeMessageEvent event, Emitter<SplashState> emit) async{


    emit(SplashApiFetchingStartedState());

    final baseUrl = await sharedPreferencesRepository.getBaseUrl();
   // printWarning(" base url from the shared preferences $baseUrl");

    final result = await apiRepository.getWelcomeMessage(baseUrl);



    if(result is ApiError){
      emit(SplashApiFetchingFailedState(apiError: result));
      emit(SplashWelcomeMessageFetchFailedState(apiError: result));
      return;
    }



    await Future.delayed(const Duration(seconds: 5));
    if(result == "Unipos Android pos") {
      emit(SplashWelcomeMessageFetchSuccessState(welcomeMessage: result));
      emit(SplashNavigateToLoginScreenState());
    }else{
      emit(SplashApiFetchingFailedState(apiError: const ApiError(errorCode: 1,errorMessage: "Server is not correct")));
      emit(SplashWelcomeMessageFetchFailedState(apiError: const ApiError(errorCode: 1,errorMessage: "Server is not correct")));
      return;
    }
  }
}
