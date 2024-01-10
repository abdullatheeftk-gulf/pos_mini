part of 'url_bloc.dart';

@immutable
abstract class UrlEvent {}

final class SetBaseUrlEvent extends UrlEvent{
  final String baseUrl;

  SetBaseUrlEvent({required this.baseUrl});
}
