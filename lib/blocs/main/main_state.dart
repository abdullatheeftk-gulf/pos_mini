part of 'main_bloc.dart';

@immutable
abstract class MainState {}

final class MainInitialState extends MainState {}

final class MainScreenNavigationMenuItemClickedState extends MainState{
  final String selectedMenuName;

  MainScreenNavigationMenuItemClickedState({required this.selectedMenuName});
}
