part of 'main_bloc.dart';

@immutable
abstract class MainEvent {}

final class MainScreenNavigationMenuItemClickedEvent extends MainEvent{
  final String menuItemName;

  MainScreenNavigationMenuItemClickedEvent({required this.menuItemName});
}
