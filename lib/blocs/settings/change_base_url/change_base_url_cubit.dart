

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/settings/change_base_url/build_states/change_url_build_states.dart';
import 'package:pos_mini/blocs/settings/change_base_url/consumer_states/change_url_consumer_states.dart';
import 'package:pos_mini/blocs/util/show_dialog_for_bloc/show_dialog.dart';
import 'package:pos_mini/repository/api_repository/api_repository.dart';
import 'package:pos_mini/util/api_error/api_error.dart';

part 'change_base_url_state.dart';

class ChangeBaseUrlCubit extends Cubit<ChangeBaseUrlState> {
  final ApiRepository apiRepository;
  ChangeBaseUrlCubit({required this.apiRepository}) : super(ChangeBaseUrlInitial());
  
  void getWelcomeMessage(String baseUrl) async{
    emit(const ChangeUrlBuildStates(showProgressBar: true));
    
    final result = await apiRepository.getWelcomeMessage(baseUrl);
    
    if(result is ApiError){
      emit(ChangeUrlBuildStates(showProgressBar: false,apiError: result));
      emit(ChangeUrlConsumerStates(apiError: result));
      return;
    }

    emit(const ChangeUrlBuildStates(showProgressBar: false));
    emit(const ChangeUrlConsumerStates(showDialog: ShowDialog(message: "Changed Base Url")));
  }

  void navigateBack() {
    emit(const ChangeUrlConsumerStates(navigate: "Navigate back"));
  }
}
