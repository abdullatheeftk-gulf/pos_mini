

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/add/dine_in/table/build_state/add_table_build_state.dart';
import 'package:pos_mini/blocs/add/dine_in/table/consumer_state/add_table_consumer_state.dart';
import 'package:pos_mini/models/dine_in/table/dine_in_table.dart';
import 'package:pos_mini/repository/api_repository/api_repository.dart';
import 'package:pos_mini/util/api_error/api_error.dart';
import 'package:pos_mini/util/pair.dart';

part 'add_table_state.dart';

class AddTableCubit extends Cubit<AddTableState> {
  final ApiRepository apiRepository;
  Pair<String,int> _noOfSeatsSelected = Pair(first: "assets/images/T4.jpg", second: 4);
  AddTableCubit({required this.apiRepository}) : super(AddTableInitial());

  void addTable(DineInTable dineInTable) async{
    emit(const AddTableBuildState(showProgressBar: true));



    final result = await apiRepository.addATable(dineInTable);

    if(result is ApiError){
      final errorMessage = "${result.errorData}, ${result.errorMessage}, ${result.errorData}";
      emit(AddTableBuildState(showProgressBar: false,errorMessage: errorMessage));
      emit(AddTableConsumerState(errorMessage: errorMessage));
      return;
    }

    emit(const AddTableBuildState(showProgressBar: false));
    emit(const AddTableConsumerState(navigate: "Navigate Back"));
  }

  //
  void setNoOfSeatsSelected(Pair<String,int> value){
    _noOfSeatsSelected = value;
  }
}
