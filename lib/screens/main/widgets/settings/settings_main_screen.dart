import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/settings/logout_bloc/logout_consumer_state/logout_consumer_state.dart';
import 'package:pos_mini/blocs/settings/logout_bloc/logout_cubit.dart';
import 'package:pos_mini/screens/login/user/user_login_screen.dart';
import 'package:pos_mini/screens/main/widgets/settings/child/admin_Text_buttons.dart';
import 'package:pos_mini/screens/main/widgets/settings/child/screens/cjange_base_url/change_base_url_screen.dart';

class SettingsMainScreen extends StatefulWidget {
  final bool isAdminLogin;

  const SettingsMainScreen({super.key, required this.isAdminLogin});

  @override
  State<SettingsMainScreen> createState() => _SettingsMainScreenState();
}

class _SettingsMainScreenState extends State<SettingsMainScreen> {
  bool _isAdminLogin = false;

  @override
  void initState() {
    _isAdminLogin = widget.isAdminLogin;
    super.initState();
  }

  void _showLogoutDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Logout"),
            content: const Text("Are you want to logout"),
            actions: [
              ElevatedButton(
                onPressed: () {
                  context.read<LogoutCubit>().navigateToUserLoginScreen();
                },
                child: const Text("OK"),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LogoutCubit, LogoutState>(
      listener: (context, state) {
        if (state is LogoutConsumerState) {
          if (state.showDialog != null) {
            _showLogoutDialog();
          }
          if (state.navigate != null) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (context) => const UserLoginScreen()),
                (route) => route.willHandlePopInternally);
          }
        }
      },
      child: Scaffold(body: Center(child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final screenWidth = constraints.widthConstraints().maxWidth;
          final width = (screenWidth >= 900) ? 900.0 : screenWidth;
          return SizedBox(
            width: width,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    if (_isAdminLogin) const AdminTextButtons(),
                    const SizedBox(
                      height: 8,
                    ),
                    InkWell(
                      child: const Card(
                        child: ListTile(
                          title: Text("Change Base Url"),
                          titleTextStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 18),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ChangeBaseUrlScreen()));
                      },
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    InkWell(
                      child: const Card(
                        child: ListTile(
                          title: Text("Logout"),
                          titleTextStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 18,
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      onTap: () {
                        context.read<LogoutCubit>().showLogoutDialog();
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ))),
    );
  }
}
