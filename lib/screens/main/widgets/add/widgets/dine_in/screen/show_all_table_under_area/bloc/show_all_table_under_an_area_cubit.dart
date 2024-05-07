

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/dine_in/table/dine_in_table.dart';
import 'package:pos_mini/repository/shared_data_repository/shared_data_repository.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/dine_in/screen/show_all_table_under_area/bloc/build_state/show_all_table_build_state.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/dine_in/screen/show_all_table_under_area/bloc/consumer_state/show_all_table_consumer_state.dart';
import 'package:pos_mini/util/api_error/api_error.dart';
import 'package:pos_mini/util/log_functions/log_functions.dart';

import '../../../../../../../../../repository/api_repository/api_repository.dart';

part 'show_all_table_under_an_area_state.dart';

class ShowAllTableUnderAnAreaCubit extends Cubit<ShowAllTableUnderAnAreaState> {
  final ApiRepository apiRepository;
  final SharedDataRepository sharedDataRepository;
  ShowAllTableUnderAnAreaCubit({required this.sharedDataRepository, required this.apiRepository}) : super(ShowAllTableUnderAnAreaInitial()){
    sharedDataRepository.dineInTableController.stream.listen((listOfDineInTable) {
      printError("---------\n $listOfDineInTable");
      emit(ShowAllTableBuildState<List<DineInTable>>(showProgressBar: false,result: listOfDineInTable));
    });
  }

  void getAllTablesUnderAnArea(int areaId) async{
    emit(const ShowAllTableBuildState(showProgressBar: true));

    final list = await apiRepository.getAllTablesUnderAnArea(areaId);

    if(list is ApiError){
      final errorMessage = "${list.errorData}, ${list.errorMessage}, ${list.errorCode}";
      emit(ShowAllTableBuildState(showProgressBar: false,errorMessage: errorMessage));
      emit(ShowAllTableConsumerState(errorMessage: errorMessage));
      return;
    }

    emit(ShowAllTableBuildState<List<DineInTable>>(showProgressBar: false,result: list));

  }
}
