import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_event.dart';

part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainInitialState()) {
    on<MainScreenNavigationMenuItemClickedEvent>(
        _mainScreenNavigationMenuItemClickedEvent);
  }

  FutureOr<void> _mainScreenNavigationMenuItemClickedEvent(
      MainScreenNavigationMenuItemClickedEvent event, Emitter<MainState> emit) {

    final selectedMenuName = event.menuItemName;

    emit(
      MainScreenNavigationMenuItemClickedState(
        selectedMenuName: selectedMenuName,
      ),
    );
  }
}
