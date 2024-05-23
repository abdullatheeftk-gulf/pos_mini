import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/reset_admin_password/reset_admin_password_cubit.dart';
import 'package:pos_mini/models/admin_user/admin_user.dart';
import 'package:pos_mini/screens/ui_util/hide_key_board.dart';
import 'package:pos_mini/util/api_error/api_error.dart';
import 'package:pos_mini/util/log_functions/log_functions.dart';

class ResetAdminPasswordScreen extends StatefulWidget {
  const ResetAdminPasswordScreen({super.key});

  @override
  State<ResetAdminPasswordScreen> createState() =>
      _ResetAdminPasswordScreenState();
}

class _ResetAdminPasswordScreenState extends State<ResetAdminPasswordScreen> {
  ApiError? _apiError;
  bool _showProgressBar = false;

  final _formKey = GlobalKey<FormState>();

  final _oldPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _newPasswordConfirmController = TextEditingController();

  late ResetAdminPasswordCubit _resetAdminPasswordCubit;

  @override
  void initState() {
    _resetAdminPasswordCubit = context.read<ResetAdminPasswordCubit>();
    super.initState();
  }

  @override
  void dispose() {
    _oldPasswordController.dispose();
    _newPasswordConfirmController.dispose();
    _newPasswordController.dispose();
    super.dispose();
  }

  void _showSuccessDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Success"),
          actions: [
            ElevatedButton(onPressed: (){
              _resetAdminPasswordCubit.navigateBack();
              Navigator.pop(context);
            }, child:const Text("OK"),)
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    String errorMessage = "";
    return LayoutBuilder(builder: (context, constraints) {
      final screenWidth = constraints.maxWidth;
      final double widthOfTheViewPort = screenWidth >= 600 ? 600 : screenWidth;

      return BlocConsumer<ResetAdminPasswordCubit, ResetAdminPasswordState>(

        listener: (context,state){
          state.whenOrNull(
            buildState: (showProgressBar, result, apiError,navigate,showDialog) {
              _showProgressBar = showProgressBar;
              _apiError = apiError;
              // Navigate
              if (navigate != null) {
                Navigator.pop(context);
              }

              if (showDialog != null) {
                _showProgressBar = false;
                _showSuccessDialog();
              }

            },
          );

          if (_apiError != null) {
            errorMessage =
            "${_apiError?.errorMessage}, ${_apiError?.errorData}";
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(errorMessage),
                duration: const Duration(seconds: 5),
              ),
            );
          }

        },

        builder: (context, state) {
          printWarning("build");
          return Scaffold(
            appBar: AppBar(
              title: const Text("RESET ADMIN PASSWORD"),
            ),
            floatingActionButton:
                _showProgressBar ? const CircularProgressIndicator() : null,
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            body: Center(
              child: Container(
                alignment: Alignment.center,
                width: widthOfTheViewPort,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          height: 16,
                        ),

                        // Old password Area
                        TextFormField(
                          controller: _oldPasswordController,
                          decoration: InputDecoration(
                            label: const Text("Old Password"),
                            hintText: "Enter old password",
                            hintStyle: TextStyle(
                              color: Colors.black26.withOpacity(0.3),
                            ),
                            border: const OutlineInputBorder(),
                          ),
                          onFieldSubmitted: (value) {
                            //Todo
                            hideKeyboard(context);
                          },
                          validator: (value) {
                            if (value != null && value.isEmpty) {
                              return "Old password is not entered";
                            }
                            final result = _resetAdminPasswordCubit
                                .checkOldPasswordEnteredIsCorrect(
                                    value.toString());
                            if (!result) {
                              return "Enter password is not current admin password";
                            }
                            return null;
                          },
                        ),

                        const SizedBox(
                          height: 8,
                        ),
                        // New password area
                        TextFormField(
                          controller: _newPasswordController,
                          decoration: InputDecoration(
                            label: const Text("New Password"),
                            hintText: "Enter new password",
                            hintStyle: TextStyle(
                              color: Colors.black26.withOpacity(0.3),
                            ),
                            border: const OutlineInputBorder(),
                          ),
                          onFieldSubmitted: (value) {
                            //Todo
                            hideKeyboard(context);
                          },
                          validator: (value) {
                            if (value != null && value.isEmpty) {
                              return "New password is not entered";
                            }
                            return null;
                          },
                        ),

                        const SizedBox(
                          height: 8,
                        ),
                        // Confirm new password
                        TextFormField(
                          controller: _newPasswordConfirmController,
                          decoration: InputDecoration(
                            label: const Text("Confirm new Password"),
                            hintText: "Enter new password again",
                            hintStyle: TextStyle(
                              color: Colors.black26.withOpacity(0.3),
                            ),
                            border: const OutlineInputBorder(),
                          ),
                          onFieldSubmitted: (value) {
                            //Todo
                            hideKeyboard(context);
                          },
                          validator: (value) {
                            final newPassword = _newPasswordController.text;

                            if (value != null && value.isEmpty) {
                              return "Confirm password is not entered";
                            }
                            if (value != newPassword) {
                              return "Confirm password is not same as new password";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        if (_apiError != null)
                          Text(
                            "Error:- $errorMessage",
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.error),
                          ),

                        const SizedBox(
                          height: 32,
                        ),



                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              final newAdminUser = AdminUser(
                                adminId: 1,
                                adminName: "admin",
                                adminPassword: _newPasswordController.text,
                                licenseKey: "key6",
                              );

                              _resetAdminPasswordCubit
                                  .resetAdminPassword(newAdminUser);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(context).primaryColor,
                            foregroundColor: Colors.white,
                          ),
                          child: const Text("Reset"),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      );
    });
  }
}
