import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_mini/screens/main/widgets/dine_in_table/table/cubit/table_screen_cubit.dart';
import 'package:pos_mini/screens/main/widgets/dine_in_table/table/model/table_navigate_to_table_kot.dart';

part 'table_listener_state.freezed.dart';


@freezed
class TableListenerState extends TableScreenState with _$TableListenerState {

  const factory TableListenerState({
    @Default(null) TableNavigateToTableKot? navigate,
    @Default(null) String? errorMessage,
  }) = _TableListenerState;

  
}