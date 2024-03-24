part of 'reset_admin_password_cubit.dart';

@freezed
class ResetAdminPasswordState<T> with _$ResetAdminPasswordState {
  const factory ResetAdminPasswordState.initialState() = _InitialState;

  const factory ResetAdminPasswordState.buildState({
    @Default(false) bool showProgressBar,
    @Default(null) T? result,
    @Default(null) ApiError? apiError,
    @Default(null) String? navigate,
    @Default(null) ShowDialog? showDialog,
  }) = _buildState;

  /*const factory ResetAdminPasswordState.consumerState({
    @Default(null) ApiError? apiError,
    @Default(null) String? navigate,
    @Default(null) ShowDialog? showDialog
  }) = _consumerState;*/
}
