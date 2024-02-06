import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/url/url_bloc.dart';
import 'package:pos_mini/screens/login/user/user_login_screen.dart';
import 'package:pos_mini/screens/ui_util/hide_key_board.dart';

class SetBaseUrlScreen extends StatefulWidget {
  const SetBaseUrlScreen({super.key});

  @override
  State<SetBaseUrlScreen> createState() => _SetBaseUrlScreenState();
}

class _SetBaseUrlScreenState extends State<SetBaseUrlScreen> {
  final _baseUrlController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool showProgressBar = false;
  String errorMessage = "";

  @override
  void dispose() {
    _baseUrlController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UrlBloc, UrlState>(
      listener: (context, state) {
        if (state is SetBaseUrlApiFetchingFailedState) {
          final message =
              "${state.apiError.errorCode}, ${state.apiError.errorMessage},${state.apiError.errorData}";
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(message)));
        }
        if (state is SetBaseUrlNavigateToLoginScreenState) {
          Navigator.pop(context);
           Navigator.push(context,
              MaterialPageRoute(builder: (context) => const UserLoginScreen()));
        }
      },
      listenWhen: (prev, cur) {
        if (cur is SetBaseUrlUiActionState) {
          return true;
        }
        return false;
      },
      buildWhen: (prev, cur) {
        if (cur is SetBaseUrlUiBuildState) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        if (state is SetBaseUrlApiFetchingStartedState) {
          showProgressBar = true;
        }
        if (state is SetBaseUrlSuccessState) {
          showProgressBar = false;
        }
        if (state is SetBaseUrlFailedState) {
          final apiError = state.apiError;
          errorMessage = apiError.errorMessage;
          showProgressBar = false;
        }
        return LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            final screenWidth = constraints.widthConstraints().maxWidth;
            final double widthOfTheViewPort =
                screenWidth >= 600 ? 600 : screenWidth;

            return Scaffold(
              appBar: AppBar(
                title: const Text(
                  "Set Base Url",
                  style: TextStyle(decoration: TextDecoration.underline),
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
                        padding: const EdgeInsets.all(16.0),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 16,
                              ),
                              TextFormField(
                                validator: (value) {
                                  if (value == null ||
                                      value.isEmpty ||
                                      !_validateUrl(value)) {
                                    return "Enter valid url";
                                  } else {
                                    return null;
                                  }
                                },
                                controller: _baseUrlController,
                                decoration: InputDecoration(
                                  label: const Text("Base url"),
                                  hintText: "Enter Base Url",
                                  hintStyle: TextStyle(
                                    color: Colors.black26.withOpacity(0.3),
                                  ),
                                  border: const OutlineInputBorder(),
                                ),
                                onFieldSubmitted: (value) {
                                  hideKeyboard(context);
                                  if (_formKey.currentState!.validate()) {
                                    _setBaseUrl(_baseUrlController.text);
                                  }
                                },
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              ElevatedButton(
                                onPressed: showProgressBar
                                    ? null
                                    : () {
                                        hideKeyboard(context);
                                        if (_formKey.currentState!.validate()) {
                                          _setBaseUrl(_baseUrlController.text);
                                        }
                                      },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(255, 0, 26, 51),
                                  foregroundColor: Colors.white,
                                ),
                                child: const Text("Check and Save Base Url"),
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

  void _setBaseUrl(String value) {
    context.read<UrlBloc>().add(SetBaseUrlEvent(baseUrl: value));
  }

  bool _validateUrl(String uri) {
    return Uri.parse(uri).isAbsolute;
  }
}
