part of 'table_screen_cubit.dart';


class TableScreenState {}

final class TableScreenInitialState extends TableScreenState{}

final class TableSelectedAreaState extends TableScreenState{
  final int selectedAreaId;

  TableSelectedAreaState({required this.selectedAreaId});
}

final class TableScreenGetAllAreasState extends TableScreenState{
  final List<DineInArea> list;

  TableScreenGetAllAreasState({required this.list});
}
