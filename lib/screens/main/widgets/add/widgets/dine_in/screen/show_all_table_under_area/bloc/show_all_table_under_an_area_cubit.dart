import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'show_all_table_under_an_area_state.dart';

class ShowAllTableUnderAnAreaCubit extends Cubit<ShowAllTableUnderAnAreaState> {
  ShowAllTableUnderAnAreaCubit() : super(ShowAllTableUnderAnAreaInitial());
}
