
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/dine_in/area/dine_in_area.dart';
import 'package:pos_mini/repository/api_repository/api_repository.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table/cubit/area_build_state/table_build_state.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table/cubit/listener_state/table_listener_state.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table/model/table_navigate_to_table_kot.dart';
import 'package:pos_mini/util/api_error/api_error.dart';
import 'package:pos_mini/util/log_functions/log_functions.dart';


part 'table_screen_state.dart';


class TableScreenCubit extends Cubit<TableScreenState> {
  final ApiRepository apiRepository;

  int _selectedAreaId = 0;

  TableScreenCubit({required this.apiRepository}) : super(TableScreenInitialState());


  // Get all areas function
  void getAllDineInAreas() async{

    emit(const TableBuildState(showProgressBar: true));

    final result = await apiRepository.getAllAreas();



    if(result is ApiError){
      final errorMessage = "Error Data:  ${result.errorData}, message:${result.errorMessage}";
      emit( TableBuildState(showProgressBar: false,errorMessage: errorMessage));
      emit(TableListenerState(errorMessage: errorMessage));
      return;
    }

    emit(const TableBuildState(showProgressBar: false));
    emit(TableScreenGetAllAreasState(list:result));

    final dineInAreas = result as List<DineInArea>;
    if(dineInAreas.isNotEmpty) {
      getTablesUnderAnArea(dineInAreas[0].id);
    }

    
  }

  void getTablesUnderAnArea(int areaId) async{
    emit(const TableBuildState(showProgressBar: true));

    final result = await apiRepository.getAllTablesUnderAnArea(areaId);

    if(result is ApiError){
      final errorMessage = "Error Data:  ${result.errorData}, message:${result.errorMessage}";
      emit( TableBuildState(showProgressBar: false,errorMessage: errorMessage));
      emit(TableListenerState(errorMessage: errorMessage));
      return;
    }

     emit(TableBuildState(showProgressBar: false,result: result));
  }

  

  void selectAnArea(int id){
      _selectedAreaId = id;
      emit(TableSelectedAreaState(selectedAreaId: _selectedAreaId));
  }

  void navigate(TableNavigateToTableKot navigate){
    emit(const TableBuildState(showProgressBar: false));
    emit(TableListenerState(navigate: navigate));
  }
}
