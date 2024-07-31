

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/add/dine_in/table/build_state/add_table_build_state.dart';
import 'package:pos_mini/blocs/add/dine_in/table/consumer_state/add_table_consumer_state.dart';
import 'package:pos_mini/blocs/util/show_dialog_for_bloc/show_dialog.dart';
import 'package:pos_mini/models/dine_in/area/dine_in_area.dart';
import 'package:pos_mini/models/dine_in/table/dine_in_table.dart';
import 'package:pos_mini/repository/api_repository/api_repository.dart';
import 'package:pos_mini/repository/shared_data_repository/shared_data_repository.dart';
import 'package:pos_mini/util/api_error/api_error.dart';
import 'package:pos_mini/util/log_functions/log_functions.dart';
import 'package:pos_mini/util/new_pair/new_pair.dart';
import 'package:pos_mini/util/pair.dart';

import '../../../../models/barcode/barcode.dart';

part 'add_table_state.dart';

class AddTableCubit extends Cubit<AddTableState> {

  final ApiRepository apiRepository;
  final SharedDataRepository sharedDataRepository;
  int _barcodeId = -1;
  NewPair<String,int> _noOfSeatsSelected = const NewPair(first: "assets/images/T4.jpg", second: 4);
  DineInArea? _dineInArea;



  AddTableCubit({required this.sharedDataRepository, required this.apiRepository}) : super(AddTableInitial());




  void addTable({required DineInTable dineInTable,required Barcode barcode}) async{
    printWarning(dineInTable.toString());

    emit(const AddTableBuildState(showProgressBar: true));

    final re = await apiRepository.addBarcode(barcode);
    printError(re.toString());

    if(re is ApiError){
      final barcodeErrorMessage = "${re.errorData}, ${re.errorMessage}, ${re.errorData}, addbarcode";
      emit(AddTableBuildState(barcodeErrorMessage: barcodeErrorMessage));
      return;
    }


    _barcodeId = re;

    final dineTable = dineInTable.copyWith(
      areaId: _dineInArea?.id ?? 0,
      noOfSeats: _noOfSeatsSelected.second,
      image: _noOfSeatsSelected.first
    );




    final result = await apiRepository.addATable(dineTable);

    if(result is ApiError){
      printError(result.toString());
      final errorMessage = "${result.errorData}, ${result.errorMessage}, ${result.errorCode} add table";

      emit(AddTableBuildState(showProgressBar: false,errorMessage: errorMessage));
      emit(AddTableConsumerState(errorMessage: errorMessage));
      return;
    }

    final barcodeOtherIdsResult = await apiRepository.addBarcodeOtherId(Barcode(mBarcode: barcode.mBarcode,tableId: result));

    if(barcodeOtherIdsResult is ApiError){
      final errorMessage = "${result.errorData}, ${result.errorMessage}, ${result.errorCode} add barcode other ids";

      emit(AddTableBuildState(showProgressBar: false,errorMessage: errorMessage));
      emit(AddTableConsumerState(errorMessage: errorMessage));
      return;
    }

    emit(const AddTableBuildState(showProgressBar: false));


    final listOfDineTablesUnderAnArea =await apiRepository.getAllTablesUnderAnArea(_dineInArea!.id);
    printError(_dineInArea!.id.toString());
    printError("____\n $listOfDineTablesUnderAnArea");

    emit(const AddTableConsumerState(showSuccessDialog: ShowDialog(message: "Success")));

    if(listOfDineTablesUnderAnArea is ApiError){
      return;
    }

    sharedDataRepository.setDineTableList(listOfDineTablesUnderAnArea);

  }

  //
  void setNoOfSeatsSelected(NewPair<String,int> value){

    _noOfSeatsSelected = value;
  }

  void getAllAreas() async{

     //printDebug("getAllAreas");
    emit(const AddTableBuildState(showProgressBar: true));

    final result = await apiRepository.getAllAreas();

    if(result is ApiError){

      final errorMessage = "${result.errorData}, ${result.errorMessage}, ${result.errorData}";
      printError(errorMessage);
      emit(AddTableBuildState(showProgressBar: false,errorMessage: errorMessage));
      emit(AddTableConsumerState(errorMessage: errorMessage));
      return;
    }

    //printWarning(result.toString());

    emit(const AddTableBuildState(showProgressBar: false));

    emit(AddTableGetAllAreaState(listOfDineInAreas: result));
  }

  void setDineInArea(DineInArea dineInArea){
     _dineInArea = dineInArea;
  }

  void navigateBack() {
    emit(const AddTableConsumerState(navigate: "NavigateBack"));
  }


}
