import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/dine_in/area/dine_in_area.dart';
import 'package:pos_mini/models/dine_in/table/dine_in_table.dart';
import 'package:pos_mini/models/kot_classes/table_with_chair/table_with_chair.dart';
import 'package:pos_mini/repository/api_repository/api_repository.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/add_new_kot/bolc/add_new_kot_build_state/add_new_kot_build_State.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/add_new_kot/bolc/add_new_kot_listener_state/add_new_kot_listener_state.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/add_new_kot/model/show_select_table_dialog.dart';
import 'package:pos_mini/util/api_error/api_error.dart';
import 'package:pos_mini/util/log_functions/log_functions.dart';

part 'add_new_kot_state.dart';

class AddNewKotCubit extends Cubit<AddNewKotState> {
  final ApiRepository apiRepository;
  int _selectedAreaId = -1;
  List<DineInTable> _dineInTables = [];
  List<TableWithChair> _tableWithChairs = [];

  AddNewKotCubit({required this.apiRepository}) : super(AddNewKotInitial());

  // fetching All area and Tables
  void getAllAreaAndTables() async {
   // emit(const AddNewKotBuildState(showProgressBar: true));
    emit(AddNewKotProgressBarState(showProgressBar: true));

    // Get All areas
    final result = await apiRepository.getAllAreas();

    if (result is ApiError) {
      final errorMessage =
          "Error:- ${result.errorData}, Error code ${result.errorCode}";

      emit(AddNewKotListenerState(errorMessage: errorMessage));
      emit(AddNewKotBuildState(errorMessage: errorMessage));
      return;
    }

    try {
      _selectedAreaId = (result as List<DineInArea>)[0].id;
    } catch (e) {
      emit(AddNewKotListenerState(errorMessage: e.toString()));
      emit(AddNewKotBuildState(errorMessage: e.toString()));
      return;
    }

    emit(AddNewKotBuildState(result: result));

    // emitting default selected area id
    if (_selectedAreaId != -1) {
      final tablesOfTheFloor =
          await apiRepository.getAllDineTableUnderAnArea(_selectedAreaId);

      // emitting selected area id
      emit(AddNewKotSelectedDineInAreaIdState(_selectedAreaId));

      if (tablesOfTheFloor is ApiError) {
        final errorMessage =
            "Error:- ${tablesOfTheFloor.errorData}, code: ${tablesOfTheFloor.errorCode}";
        emit(AddNewKotListenerState(errorMessage: errorMessage));
        emit(AddNewKotProgressBarState(showProgressBar: false));
        emit(AddNewKotBuildState(
            errorMessage: errorMessage));
        return;
      }

      _dineInTables = tablesOfTheFloor;

      emit(AddNewKotProgressBarState(showProgressBar: false));
      emit(AddNewKotBuildState(
          result: tablesOfTheFloor));
    }
  }

  // Dine in area clicked event
  void getTablesUnderADineInArea(int areaId) async {
    emit(AddNewKotProgressBarState(showProgressBar: true));
    //emit(const AddNewKotBuildState(showProgressBar: true));

    _selectedAreaId = areaId;

    emit(AddNewKotSelectedDineInAreaIdState(_selectedAreaId));

    final tablesUnderThisArea =
        await apiRepository.getAllDineTableUnderAnArea(areaId);

    if (tablesUnderThisArea is ApiError) {
      final errorMessage =
          "Error ${tablesUnderThisArea.errorData}, error Code:- ${tablesUnderThisArea.errorCode}";
      emit(AddNewKotBuildState(
          errorMessage: errorMessage));
      emit(AddNewKotListenerState(errorMessage: errorMessage));
      return;
    }



    // Create a map from tablesWithChairs to make lookup by tableId fast
    final tableWithChairMap = {for (var table in _tableWithChairs) table.tableId: table};

    // Update the dineInTables list
    _dineInTables = (tablesUnderThisArea as List<DineInTable>).map((dineInTable) {
      if (tableWithChairMap.containsKey(dineInTable.id)) {
        final tableWithChair = tableWithChairMap[dineInTable.id]!;
        return dineInTable.copyWith(noOfSeatsOccupied: tableWithChair.noOfChairRequired);
      } else {
        return dineInTable;
      }
    }).toList();

    // Print the updated dineInTables list for verification
    for (var table in _dineInTables) {
      printPurple(table);
    }

    emit(AddNewKotProgressBarState(showProgressBar: false));
    emit(AddNewKotBuildState(
         result: _dineInTables));
  }

  void onTableClickedEvent(DineInTable dineInTable) {
    emit(AddNewKotInitial());
    emit(AddNewKotListenerState(
        showSelectTableDialog:
            ShowSelectTableDialog(dineInTable: dineInTable)));
  }

  void onSelectTableSeatsClicked(TableWithChair tableWithChair) async {
    //_tableWithChairs.add(tableWithChair);
    bool isItAdded = false;
    _tableWithChairs = _tableWithChairs.map((element){
      if(element.tableId == tableWithChair.tableId){
        isItAdded = true;
       return  element.copyWith(noOfChairRequired: element.noOfChairRequired+tableWithChair.noOfChairRequired);
      }
      return element;
    }).toList();

    if(!isItAdded){
      _tableWithChairs.add(tableWithChair);
    }


    emit(
        AddNewKotTableWithChairSelectedState(tableWithChair: _tableWithChairs));
    await Future.delayed(const Duration(milliseconds: 100));

    _dineInTables = _dineInTables.map((dineInTable) {
      if (tableWithChair.tableId == dineInTable.id) {
        return dineInTable.copyWith(
            noOfSeatsOccupied: dineInTable.noOfSeatsOccupied +
                tableWithChair.noOfChairRequired);
      }
      return dineInTable;
    }).toList();

    emit(AddNewKotBuildState(result: _dineInTables));
  }

  void clearUnwantedItems() {
    _tableWithChairs.clear();
    _dineInTables.clear();
    _selectedAreaId = -1;
    //emit(AddNewKotTableWithChairSelectedState(tableWithChair: _tableWithChair));
  }

  void onChipDelete(int index) async{
    // removing and emitting Table with chair class
    final removedTableWithChair = _tableWithChairs.removeAt(index);
    emit(AddNewKotTableWithChairSelectedState(tableWithChair: _tableWithChairs));

    await Future.delayed(const Duration(milliseconds: 100));

    // re writing dining table list
   _dineInTables =  _dineInTables.map((table){
      if(removedTableWithChair.tableId == table.id){
        return table.copyWith(noOfSeatsOccupied: table.noOfSeatsOccupied-removedTableWithChair.noOfChairRequired);
      }
      return table;
    }).toList();

   emit(AddNewKotBuildState(result: _dineInTables));

  }


}
