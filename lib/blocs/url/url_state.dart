part of 'url_bloc.dart';

@immutable
abstract class UrlState {}

class UrlInitial extends UrlState {}

final class SetBaseUrlUiBuildState extends UrlState{}

final class SetBaseUrlUiActionState extends UrlState{}

final class SetBaseUrlApiFetchingStartedState extends SetBaseUrlUiBuildState{}
final class SetBaseUrlApiFetchingFailedState extends SetBaseUrlUiActionState{
  final ApiError apiError;

  SetBaseUrlApiFetchingFailedState({required this.apiError});
}

final class SetBaseUrlSuccessState extends SetBaseUrlUiBuildState{}

final class SetBaseUrlFailedState extends SetBaseUrlUiBuildState{
  final ApiError apiError;

  SetBaseUrlFailedState({required this.apiError});
}

final class SetBaseUrlNavigateToLoginScreenState extends SetBaseUrlUiActionState{}

