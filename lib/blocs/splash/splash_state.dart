part of 'splash_bloc.dart';

@immutable
abstract class SplashState {}

class SplashInitial extends SplashState {}

final class SplashUIBuildState extends SplashState{}
final class SplashUIActionState extends SplashState{}

final class SplashApiFetchingStartedState extends SplashUIBuildState{}

final class SplashApiFetchingFailedState extends SplashUIActionState{
  final ApiError apiError;

  SplashApiFetchingFailedState({required this.apiError});
}

final class SplashWelcomeMessageFetchSuccessState extends SplashUIBuildState{
  final String welcomeMessage;

  SplashWelcomeMessageFetchSuccessState({required this.welcomeMessage});
}

final class SplashWelcomeMessageFetchFailedState extends SplashUIBuildState{
  final ApiError apiError;

  SplashWelcomeMessageFetchFailedState({required this.apiError});
}


final class SplashNavigateToLoginScreenState extends SplashUIActionState{}


