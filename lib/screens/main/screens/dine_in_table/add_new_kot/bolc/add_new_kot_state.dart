part of 'add_new_kot_cubit.dart';


class AddNewKotState {}

final class AddNewKotInitial extends AddNewKotState {}



final class AddNewKotSelectedDineInAreaIdState extends AddNewKotState{
  final int dineInAreaId;

  AddNewKotSelectedDineInAreaIdState(this.dineInAreaId);
}

final class AddNewKotProgressBarState extends AddNewKotState{
  final bool showProgressBar;

  AddNewKotProgressBarState({required this.showProgressBar});
}

final class AddNewKotTableWithChairSelectedState extends AddNewKotState{
  final List<TableWithChair> tableWithChair;

  AddNewKotTableWithChairSelectedState({required this.tableWithChair});
}
