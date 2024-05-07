import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_mini/blocs/add/dine_in/table/add_table_cubit.dart';
import 'package:pos_mini/blocs/util/show_dialog_for_bloc/show_dialog.dart';

part 'add_table_consumer_state.freezed.dart';


@freezed
class AddTableConsumerState extends AddTableState with _$AddTableConsumerState{
  const factory AddTableConsumerState({
    @Default(null) String? navigate,
    @Default(null) String? errorMessage,
    @Default(null) ShowDialog? showSuccessDialog,
    @Default(null) ShowDialog? addDialog,
    @Default(null) ShowDialog? editDialog,
    @Default(null) ShowDialog? deleteDialog
}) = _AddTableConsumerState;
}