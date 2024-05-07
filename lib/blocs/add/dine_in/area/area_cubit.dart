

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/add/dine_in/area/build_state/area_build_state.dart';
import 'package:pos_mini/blocs/add/dine_in/area/consumer_state/area_consumer_state.dart';
import 'package:pos_mini/blocs/util/show_dialog_for_bloc/show_dialog.dart';
import 'package:pos_mini/models/dine_in/area/dine_in_area.dart';
import 'package:pos_mini/repository/api_repository/api_repository.dart';
import 'package:pos_mini/util/api_error/api_error.dart';

part 'area_state.dart';

class AreaCubit extends Cubit<AreaState> {
  final ApiRepository apiRepository;
  AreaCubit({required this.apiRepository}) : super(AreaInitial());

  void getAllArea() async{
    emit(const AreaBuildState(showProgressBar: true));

    final result = await apiRepository.getAllAreas();


    if(result is ApiError){
      final errorMessage = "error:- ${result.errorData}, ${result.errorMessage}, ${result.errorCode}";
      emit(AreaBuildState(showProgressBar: false,errorMessage: errorMessage));
      emit(AreaConsumerState(errorMessage: errorMessage));
      return;
    }

    emit(AreaBuildState<List<DineInArea>>(showProgressBar: false,result: result));
  }

  void addArea(DineInArea dineInArea) async{

    emit(const AreaBuildState(showProgressBar: true));

    final result = await apiRepository.addAnArea(dineInArea);

    if(result is ApiError){
      final errorMessage = "error:- ${result.errorData}, ${result.errorMessage}, ${result.errorCode}";
      emit(AreaBuildState(showProgressBar: false,errorMessage: errorMessage));
      emit(AreaConsumerState(errorMessage: errorMessage));
      return;
    }

    final result2 = await apiRepository.getAllAreas();

    if(result2 is ApiError){
      final errorMessage = "error:- ${result2.errorData}, ${result2.errorMessage}, ${result2.errorCode}";
      emit(AreaBuildState(showProgressBar: false,errorMessage: errorMessage));
      emit(AreaConsumerState(errorMessage: errorMessage));
      return;
    }

    emit(AreaBuildState<List<DineInArea>>(showProgressBar: false,result: result2));
  }

  void editArea(DineInArea dineInArea) async{
    emit(const AreaBuildState(showProgressBar: true));

    final result = await apiRepository.editArea(dineInArea);

    if(result is ApiError){
      final errorMessage = "error:- ${result.errorData}, ${result.errorMessage}, ${result.errorCode}";
      emit(AreaBuildState(showProgressBar: false,errorMessage: errorMessage));
      emit(AreaConsumerState(errorMessage: errorMessage));
      return;
    }

    final result2 = await apiRepository.getAllAreas();

    if(result2 is ApiError){
      final errorMessage = "error:- ${result2.errorData}, ${result2.errorMessage}, ${result2.errorCode}";
      emit(AreaBuildState(showProgressBar: false,errorMessage: errorMessage));
      emit(AreaConsumerState(errorMessage: errorMessage));
      return;
    }

    emit(AreaBuildState<List<DineInArea>>(showProgressBar: false,result: result2));
  }

  void deleteAnAreaById(DineInArea dineInArea)async{
    emit(const AreaBuildState(showProgressBar: true));

    final result = await apiRepository.deleteAnAreaById(dineInArea);

    if(result is ApiError){
      final errorMessage = "error:- ${result.errorData}, ${result.errorMessage}, ${result.errorCode}";
      emit(AreaBuildState(showProgressBar: false,errorMessage: errorMessage));
      emit(AreaConsumerState(errorMessage: errorMessage));
      return;
    }

    final result2 = await apiRepository.getAllAreas();

    if(result2 is ApiError){
      final errorMessage = "error:- ${result2.errorData}, ${result2.errorMessage}, ${result2.errorCode}";
      emit(AreaBuildState(showProgressBar: false,errorMessage: errorMessage));
      emit(AreaConsumerState(errorMessage: errorMessage));
      return;
    }

    emit(AreaBuildState<List<DineInArea>>(showProgressBar: false,result: result2));
  }

  void showAddAreaDialog(){

    emit(const AreaConsumerState(addDialog: ShowDialog(message: "show")));
    emit(const AreaBuildState(showProgressBar: false));
  }

  void showEditAlertDialog(DineInArea dineInArea){
    emit(AreaConsumerState(editDialog: ShowDialog<DineInArea>(message: "show",data: dineInArea)));
    emit(const AreaBuildState(showProgressBar: false));
  }

  void showDeleteAlertDialog(){
    emit(const AreaConsumerState(deleteDialog: ShowDialog(message: "show")));
    emit(const AreaBuildState(showProgressBar: false));
  }
}
