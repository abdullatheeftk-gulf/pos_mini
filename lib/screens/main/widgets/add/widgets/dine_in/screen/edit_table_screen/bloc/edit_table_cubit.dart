import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'edit_table_state.dart';

class EditTableCubit extends Cubit<EditTableState> {
  EditTableCubit() : super(EditTableInitial());
}
