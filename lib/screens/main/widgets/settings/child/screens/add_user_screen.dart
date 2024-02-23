import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/settings/add_user/add_user_cubit.dart';
import 'package:pos_mini/models/user/user.dart';
import 'package:pos_mini/screens/ui_util/hide_key_board.dart';

class AddUserScreen extends StatefulWidget {
  const AddUserScreen({super.key});

  @override
  State<AddUserScreen> createState() => _AddUserScreenState();
}

class _AddUserScreenState extends State<AddUserScreen> {
  final _userNameController = TextEditingController();
  final _userPasswordController = TextEditingController();

  bool _showProgressBar = false;
  String? _errorMessage;

  final _formKey = GlobalKey<FormState>();

  void _showSuccessAlertDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("User added Successfully"),
          titleTextStyle: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 24,
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                context.read<AddUserCubit>().onAlertDialogButtonPressed();
                Navigator.pop(context);
              },
              child: const Text("Ok"),
            )
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _userPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddUserCubit, AddUserState>(
      listenWhen: (prev, cur) {
        if (cur is AddUserUiActionState) {
          return true;
        }
        return false;
      },
      listener: (context, state) {
        if (state is AddUserPopNavigateBackState) {
          Navigator.pop(context);
        }
        if (state is AddUserSuccessAlertDialog) {
          _showSuccessAlertDialog();
        }
        if (state is AddUserApiFetchingFailedState) {
          final apiError = state.apiError;
          final errorMessage =
              "${apiError.errorCode}, ${apiError.errorData}, ${apiError.errorMessage}";
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(errorMessage),
              duration: const Duration(seconds: 2),
            ),
          );
        }
      },
      buildWhen: (prev, cur) {
        if (cur is AddUserUiBuildState) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state is AddUserShowProgressIndicatorState) {
          _showProgressBar = true;
        }

        if (state is AddUserSuccessState) {
          _showProgressBar = false;
        }

        if (state is AddUserFailedState) {
          _showProgressBar = false;
          final apiError = state.apiError;
          _errorMessage = "${apiError.errorData}, ${apiError.errorMessage}";
        }

        return Scaffold(
          appBar: AppBar(
            title: const Text("Add User"),
          ),
          floatingActionButton: _showProgressBar
              ? const CircularProgressIndicator()
              : const SizedBox(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              final screenWidth = constraints.widthConstraints().maxWidth;
              final width = (screenWidth >= 600) ? 600.0 : screenWidth;
              return Center(
                child: SizedBox(
                  height: double.infinity,
                  width: width,
                  child: Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                            controller: _userNameController,
                            decoration: InputDecoration(
                              label: const Text("User Name"),
                              hintText: "Enter user name (optional)",
                              hintStyle: TextStyle(
                                color: Colors.black26.withOpacity(0.3),
                              ),
                              border: const OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextFormField(
                            controller: _userPasswordController,
                            decoration: InputDecoration(
                              label: const Text("User Password"),
                              hintText: "Enter user password",
                              hintStyle: TextStyle(
                                color: Colors.black26.withOpacity(0.3),
                              ),
                              border: const OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter valid password";
                              }
                              return null;
                            },
                          ),

                          // To Show Error message
                          if (_errorMessage != null)
                            Text(
                              _errorMessage!,
                              style: const TextStyle(
                                color: Colors.red,
                                fontSize: 16,
                              ),
                            ),
                          const SizedBox(
                            height: 16,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              hideKeyboard(context);

                              if (_formKey.currentState!.validate()) {
                                final user = User(
                                  userPassword:
                                      _userPasswordController.text.trim(),
                                  userName: _userNameController.text.trim(),
                                );
                                context.read<AddUserCubit>().addUser(user);
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Theme.of(context).primaryColor,
                                foregroundColor: Colors.white),
                            child: const Text("Add"),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
