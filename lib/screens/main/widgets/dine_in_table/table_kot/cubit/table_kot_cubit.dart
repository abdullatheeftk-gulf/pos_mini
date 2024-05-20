import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/dine_in/dine_in_kot/dine_in_kot.dart';
import 'package:pos_mini/repository/api_repository/api_repository.dart';
import 'package:pos_mini/repository/shared_data_repository/shared_data_repository.dart';
import 'package:pos_mini/screens/main/widgets/dine_in_table/table_kot/cubit/build_state/table_kot_build_state.dart';
import 'package:pos_mini/screens/main/widgets/dine_in_table/table_kot/cubit/listener_state/table_kot_listener_state.dart';
import 'package:pos_mini/util/api_error/api_error.dart';
import 'package:pos_mini/util/log_functions/log_functions.dart';

part 'table_kot_state.dart';

class TableKotCubit extends Cubit<TableKotState> {
  final ApiRepository apiRepository;
  final SharedDataRepository sharedDataRepository;
  TableKotCubit({
    required this.apiRepository,
    required this.sharedDataRepository,
  }) : super(TableKotInitialState());

  void getAllKotUnderATable(int tableId) async {
    int totalNoOfChairsUsed = 0;

    emit(const TableKotBuildState(showProgressBar: true));

    final result = await apiRepository.getAllKotUnderATable(tableId);

    if (result is ApiError) {
      final errorMessage =
          "ErrorData: ${result.errorData}, errorMessage: ${result.errorMessage}";
      emit(TableKotBuildState(
          showProgressBar: false, errorMessage: errorMessage));
      emit(TableKotListenerState(errorMessage: errorMessage));
      return;
    }

    for (var e in (result as List<DineInKot>)) {
      totalNoOfChairsUsed = totalNoOfChairsUsed + e.noOfChairRequired;
    }

    emit(TableKotBuildState(
      showProgressBar: false,
      result: result,
      noOfChairUsed: totalNoOfChairsUsed,
    ));
  }

  // Show add dialog
  void addKotDialog() {
    emit(const TableKotBuildState(showProgressBar: false));
    emit(const TableKotListenerState(showAddDialog: "Add Data"));
  }

  // Navigate
  void navigate(
    {
      required int tableId,
      required int noOfChairRequired
    }
  ) {
    
    sharedDataRepository.setTableIdControler(tableId);
    sharedDataRepository.setNoOfChairsSelectedController(noOfChairRequired);
    emit(const TableKotBuildState(showProgressBar: false));
    emit(const TableKotListenerState(navigate: "navigate"));
  }
}
