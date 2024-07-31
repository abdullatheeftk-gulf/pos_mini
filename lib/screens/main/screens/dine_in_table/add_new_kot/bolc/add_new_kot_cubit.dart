import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_new_kot_bloc_state.dart';

class AddNewKotBlocCubit extends Cubit<AddNewKotBlocState> {
  AddNewKotBlocCubit() : super(AddNewKotBlocInitial());
}
