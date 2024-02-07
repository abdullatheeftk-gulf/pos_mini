import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/admin_login/admin_login_bloc.dart';
import 'package:pos_mini/models/admin_user/admin_user.dart';
import 'package:pos_mini/screens/ui_util/hide_key_board.dart';

class ChangePasswordAlertDialog extends StatefulWidget {
  final AdminUser oldAdminUser;
  final String? errorString;

  const ChangePasswordAlertDialog(
      {super.key, required this.oldAdminUser, this.errorString});

  @override
  State<ChangePasswordAlertDialog> createState() =>
      _ChangePasswordAlertDialogState();
}

class _ChangePasswordAlertDialogState extends State<ChangePasswordAlertDialog> {
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  late final String? _errorString;

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _errorString = widget.errorString;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          "Reset Admin Password",
          textAlign: TextAlign.center,
        ),
      ),
      titleTextStyle: const TextStyle(
        decoration: TextDecoration.underline,
        color: Colors.blue,
        fontSize: 22,
      ),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // New password
            TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  label: const Text("New Password"),
                  hintText: "Enter New Password",
                  hintStyle: TextStyle(
                    color: Colors.black26.withOpacity(0.3),
                  ),
                  border: const OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Empty Password";
                  }
                  return null;
                }),

            const SizedBox(
              height: 8,
            ),

            // Confirm password
            TextFormField(
              controller: _confirmPasswordController,
              decoration: InputDecoration(
                label: const Text("Confirm Password"),
                hintText: "Enter same password as above",
                hintStyle: TextStyle(
                  color: Colors.black26.withOpacity(0.3),
                ),
                border: const OutlineInputBorder(),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Empty Password";
                }
                final password = _passwordController.text.trim();
                final confirmPassword = _confirmPasswordController.text.trim();
                if (password != confirmPassword) {
                  return "Passwords are not matching";
                }
                return null;
              },
            ),

            if (_errorString != null)
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    _errorString,
                    style: const TextStyle(color: Colors.red),
                  )),

            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: () {
                hideKeyboard(context);
                if (_formKey.currentState!.validate()) {
                  final newAdminUser = AdminUser(
                    adminName: "admin",
                    adminPassword: _passwordController.text.trim(),
                    licenseKey: "key",
                  );
                  context.read<AdminLoginBloc>().add(AdminUpdatePasswordEvent(
                        oldAdminUser: widget.oldAdminUser,
                        newAdminUser: newAdminUser,
                      ));
                  Navigator.pop(context);
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 26, 51),
                  foregroundColor: Colors.white),
              child: const Text("Save"),
            )
          ],
        ),
      ),
    );
  }
}
