

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pos_mini/repository/api_repository/api_repository.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/dine_in/screen/edit_table_screen/bloc/build_state/edit_table_build_state.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/dine_in/screen/edit_table_screen/bloc/consumer_state/edit_table_consumer_state.dart';
import 'package:pos_mini/util/api_error/api_error.dart';


import '../../../../../../../../../models/barcode/barcode.dart';

part 'edit_table_state.dart';

class EditTableCubit extends Cubit<EditTableState> {
  final ApiRepository apiRepository;
  EditTableCubit({required this.apiRepository}) : super(EditTableInitial());

  void getBarcodeByTableId(int tableId) async{

    emit(const EditTableBuildState(showProgressBar: true));

    final result = await apiRepository.getBarcodeByDineInTableId(tableId);



    if(result is ApiError){
      final errorMessage = "${result.errorData}, ${result.errorMessage}, ${result.errorCode}";

      emit(EditTableBuildState(showProgressBar: false,errorMessage: errorMessage));
      emit(EditTableConsumerState(errorMessage: errorMessage));
      return;
    }

    emit(EditTableBuildState<Barcode>(showProgressBar: false,result: result));

  }
}
