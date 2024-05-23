
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_mini/blocs/util/show_dialog_for_bloc/show_dialog.dart';
import 'package:pos_mini/screens/main/screens/add/widgets/dine_in/screen/edit_table_screen/bloc/edit_table_cubit.dart';

part 'edit_table_consumer_state.freezed.dart';

@freezed
class EditTableConsumerState extends EditTableState with _$EditTableConsumerState{
  const factory EditTableConsumerState({
    @Default(null) String? errorMessage,
    @Default(null) String? navigate,
    @Default(null) ShowDialog? showDialog
}) = _EditTableConsumerState;
}