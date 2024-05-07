
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_mini/blocs/util/show_dialog_for_bloc/show_dialog.dart';

import '../show_all_table_under_an_area_cubit.dart';

part 'show_all_table_consumer_state.freezed.dart';

@freezed
class ShowAllTableConsumerState extends ShowAllTableUnderAnAreaState with _$ShowAllTableConsumerState{
  const factory ShowAllTableConsumerState({
    @Default(null) String? errorMessage,
    @Default(null) String? navigate,
    @Default(null) ShowDialog? showDialog,
  }) = _ShowAllTableConsumerState;
}