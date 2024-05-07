part of 'add_table_cubit.dart';


class AddTableState {}

final class AddTableInitial extends AddTableState {}

final class AddTableGetAllAreaState extends AddTableState{
  final List<DineInArea> listOfDineInAreas;

  AddTableGetAllAreaState({required this.listOfDineInAreas});
}