import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/splash/splash_bloc.dart';
import 'package:pos_mini/screens/login/user/user_login_screen.dart';
import 'package:pos_mini/screens/set_base_url/set_base_url_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool loadingWidget = true;
  String errorText = "";
  bool showSetBaseUrlButton = false;

  @override
  void initState() {
    context.read<SplashBloc>().add(FetchWelcomeMessageEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state is SplashApiFetchingFailedState) {
          final errorMessage = state.apiError.errorMessage;
          final errorCode = state.apiError.errorCode;
          final errorData = state.apiError.errorData;
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("$errorCode,$errorMessage, $errorData"),
              duration: const Duration(seconds: 2),
            ),
          );
        }
        if (state is SplashNavigateToLoginScreenState) {
          Navigator.pop(context);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const UserLoginScreen()));
        }
      },
      listenWhen: (prev, cur) {
        if (cur is SplashUIActionState) {
          return true;
        }
        return false;
      },
      buildWhen: (prev, cur) {
        if (cur is SplashUIBuildState) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state is SplashWelcomeMessageFetchFailedState) {
          errorText = "${state.apiError.errorMessage}, ${state.apiError.errorData}";
          loadingWidget = false;
          showSetBaseUrlButton = true;
        }
        if (state is SplashWelcomeMessageFetchSuccessState) {
          showSetBaseUrlButton = false;
          loadingWidget = false;
        }
        return Scaffold(
          floatingActionButton: showSetBaseUrlButton
              ? ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SetBaseUrlScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: const Color.fromARGB(255, 0, 26, 51),
                      foregroundColor: Colors.white),
                  child: const Text("Set Base Url"),
                )
              : null,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          body: Center(
              child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("assets/images/back.png"),
                 /* if (errorText.isEmpty)
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "UNIPOS\n",
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.green,
                                fontWeight: FontWeight.w600),
                          ),
                          TextSpan(
                            text: "ANDROID POS",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.brown,
                            ),
                          ),
                        ],
                      ),
                    ),*/
                  if (errorText.isNotEmpty)
                    Text(
                      errorText,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 16, color: Colors.red),
                    ),
                  const SizedBox(
                    height: 10,
                  ),
                  if (loadingWidget)
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Loading",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        SizedBox(
                          width: 10,
                          height: 10,
                          child: CircularProgressIndicator(
                            strokeWidth: 1,
                          ),
                        )
                      ],
                    ),
                ],
              ),
            ],
          )),
        );
      },
    );
  }
}
