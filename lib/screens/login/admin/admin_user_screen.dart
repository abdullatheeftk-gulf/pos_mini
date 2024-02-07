import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/admin_login/admin_login_bloc.dart';
import 'package:pos_mini/models/admin_user/admin_user.dart';
import 'package:pos_mini/screens/login/admin/widget/change_password_alert_dialog.dart';
import 'package:pos_mini/screens/main/main_screen.dart';
import 'package:pos_mini/screens/ui_util/hide_key_board.dart';

class AdminUserScreen extends StatefulWidget {
  const AdminUserScreen({super.key});

  @override
  State<AdminUserScreen> createState() => _AdminUserScreenState();
}

class _AdminUserScreenState extends State<AdminUserScreen> {
  //final _adminUserNameController = TextEditingController(text: "admin");
  final _adminPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool showProgressBar = false;
  String errorMessage = "";

  void _showChangePasswordAlertDialog(String? errorString) async {
    showDialog(
        context: context,
        builder: (context) {
          return ChangePasswordAlertDialog(
            oldAdminUser: AdminUser(
              adminName: "admin",
              adminPassword: _adminPasswordController.text.trim(),
              licenseKey: "key",
            ),
            errorString: errorString,
          );
        });
  }

  @override
  void dispose() {
    _adminPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final screenWidth = constraints.widthConstraints().maxWidth;
        final double widthOfTheViewPort =
            screenWidth >= 600 ? 600 : screenWidth;

        return BlocConsumer<AdminLoginBloc, AdminLoginState>(
          listener: (context, state) {
            if (state is AdminLoginApiFetchingFailedState) {
              final apiError = state.apiError;
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(
                      "${apiError.errorCode}, ${apiError.errorMessage}, ${apiError.errorData}")));
            }
            if (state is AdminLoginNavigateToMainScreenState) {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const MainScreen()),
                (route) => false,
              );
            }

            if (state is AdminShowChangePasswordAlertDialog) {
              _showChangePasswordAlertDialog(null);
            }
            if(state is AdminPasswordResetFailedState){
              final apiError = state.apiError;
              final errorString = apiError.errorData;
              _showChangePasswordAlertDialog(errorString);
            }
          },
          listenWhen: (prev, cur) {
            if (cur is AdminLoginUiActionState) {
              return true;
            }
            return false;
          },
          buildWhen: (prev, cur) {
            if (cur is AdminLoginUiBuildState) {
              return true;
            }
            return false;
          },
          builder: (context, state) {
            if (state is AdminLoginApiFetchingStartedState) {
              errorMessage = "";
              showProgressBar = true;
            }
            if (state is AdminLoginActionFailedState) {
              showProgressBar = false;
              final apiError = state.apiError;
              errorMessage = "${apiError.errorMessage}, ${apiError.errorData}";
            }
            if (state is AdminLoginActionSuccessState) {
              errorMessage = "";
              showProgressBar = false;
            }
            return Scaffold(
              appBar: AppBar(
                title: const Text(
                  "Admin Login",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
                centerTitle: true,
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerFloat,
              floatingActionButton:
                  showProgressBar ? const CircularProgressIndicator() : null,
              body: Center(
                child: Container(
                  alignment: Alignment.center,
                  width: widthOfTheViewPort,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(
                                height: 16,
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                controller: _adminPasswordController,
                                decoration: InputDecoration(
                                  label: const Text("Admin Password"),
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                    color: Colors.black26.withOpacity(0.3),
                                  ),
                                  border: const OutlineInputBorder(),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Password is empty";
                                  }
                                  return null;
                                },
                                onFieldSubmitted: (value) {
                                  hideKeyboard(context);
                                  if (_formKey.currentState!.validate()) {
                                    _userLogin(_adminPasswordController.text);
                                  }
                                },
                              ),
                              if (errorMessage.isNotEmpty)
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        errorMessage,
                                        style:
                                            const TextStyle(color: Colors.red),
                                      ),
                                    ],
                                  ),
                                ),
                              const SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    style: TextButton.styleFrom(
                                        foregroundColor: Colors.brown),
                                    child: const Row(
                                      children: [
                                        Icon(Icons.arrow_back),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text("User Login"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  hideKeyboard(context);
                                  if (_formKey.currentState!.validate()) {
                                    _userLogin(_adminPasswordController.text);
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 0, 26, 51),
                                  foregroundColor: Colors.white,
                                ),
                                child: const Text("Login"),
                              ),
                              const SizedBox(
                                height: 16,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  void _userLogin(String text) {
    context.read<AdminLoginBloc>().add(
          AdminLoginStartedEvent(
            adminName: "admin",
            adminPassword: _adminPasswordController.text.trim(),
          ),
        );
  }
}
