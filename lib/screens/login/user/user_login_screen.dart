import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/user_login/user_login_bloc.dart';
import 'package:pos_mini/screens/login/admin/admin_user_screen.dart';
import 'package:pos_mini/screens/ui_util/hide_key_board.dart';

class UserLoginScreen extends StatefulWidget {
  const UserLoginScreen({super.key});

  @override
  State<UserLoginScreen> createState() => _UserLoginScreenState();
}

class _UserLoginScreenState extends State<UserLoginScreen> {
  final _userPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool showProgressBar = false;
  String errorMessage = "";

  @override
  void dispose() {
    _userPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final screenWidth = constraints
            .widthConstraints()
            .maxWidth;
        final double widthOfTheViewPort =
        screenWidth >= 600 ? 600 : screenWidth;

        return BlocConsumer<UserLoginBloc, UserLoginState>(
          listener: (context, state) {
            if(state is UserLoginApiFetchingFailedState){
              final apiError = state.apiError;
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${apiError.errorCode}, ${apiError.errorMessage}, ${apiError.errorData}")));
            }
          },
          listenWhen: (prev,cur){
            if(cur is UserLoginUiActionState){
              return true;
            }
            return false;
          },
          buildWhen: (prev,cur){
            if(cur is UserLoginUIBuildState){
              return true;
            }
            return false;
          },
          builder: (context, state) {
            if(state is UserLoginApiFetchingStartedState){
              errorMessage = "";
              showProgressBar = true;
            }
            if(state is UserLoginEventFailedState){
              showProgressBar = false;
              final apiError = state.apiError;
              errorMessage = "${apiError.errorMessage}, ${apiError.errorData}";
            }
            if(state is UserLoginEventSuccessState){
              errorMessage = "";
              showProgressBar = false;
            }
            return Scaffold(
              appBar: AppBar(
                title: const Text(
                  "User Login",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
                centerTitle: true,
              ),
              floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
              floatingActionButton: showProgressBar ? const CircularProgressIndicator():null,
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
                              TextFormField(
                                controller: _userPasswordController,
                                decoration: InputDecoration(
                                  label: const Text("Login Password"),
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                    color: Colors.black26.withOpacity(0.3),
                                  ),
                                  border: const OutlineInputBorder(),
                                ),
                                onFieldSubmitted: (value) {
                                  hideKeyboard(context);
                                  if (_formKey.currentState!.validate()) {
                                    _userLogin(_userPasswordController.text);
                                  }
                                },
                              ),
                              if(errorMessage.isNotEmpty)
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(child: Text(errorMessage,style: const TextStyle(color: Colors.red),)),
                                    ],
                                  ),
                                ),
                              const SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const AdminUserScreen()));
                                    },
                                    style: TextButton.styleFrom(
                                        foregroundColor: Colors.brown
                                    ),
                                    child: const Row(
                                      children: [
                                        Text("Admin User"),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Icon(Icons.arrow_forward_outlined)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  hideKeyboard(context);
                                  if (_formKey.currentState!.validate()) {
                                    _userLogin(_userPasswordController.text);
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  elevation: 6,
                                  backgroundColor: Colors.blue,
                                  foregroundColor: Colors.white,
                                ),
                                child: const Text("Login"),
                              ),
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
    context.read<UserLoginBloc>().add(UserLoginStartEvent(password: text.trim()));
  }
}
