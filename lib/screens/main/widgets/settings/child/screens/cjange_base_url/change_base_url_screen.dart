
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/settings/change_base_url/build_states/change_url_build_states.dart';
import 'package:pos_mini/blocs/settings/change_base_url/change_base_url_cubit.dart';
import 'package:pos_mini/blocs/settings/change_base_url/consumer_states/change_url_consumer_states.dart';
import 'package:pos_mini/screens/ui_util/hide_key_board.dart';
import 'package:pos_mini/util/api_error/api_error.dart';

class ChangeBaseUrlScreen extends StatefulWidget {
  const ChangeBaseUrlScreen({super.key});

  @override
  State<ChangeBaseUrlScreen> createState() => _ChangeBaseUrlState();
}

class _ChangeBaseUrlState extends State<ChangeBaseUrlScreen> {
  final _baseUrlController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool _showProgressBar = false;

  String? _errorMessage;

  ApiError? _apiError;

  late ChangeBaseUrlCubit _changeBaseUrlCubit;

  @override
  void initState() {
    _changeBaseUrlCubit = context.read<ChangeBaseUrlCubit>();
    super.initState();
  }

  @override
  void dispose() {
    _baseUrlController.dispose();
    super.dispose();
  }

  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Success"),
            content: const Text("Changed Base Url"),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  _changeBaseUrlCubit.navigateBack();
                },
                child: const Text("Ok"),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final screenWidth = constraints.maxWidth;
        final viewPortWidth = screenWidth >= 600 ? 600.0 : screenWidth;
        return BlocConsumer<ChangeBaseUrlCubit, ChangeBaseUrlState>(
          listener: (context, state) {
            if (state is ChangeUrlConsumerStates) {
              if (state.apiError != null) {
                final apiError = state.apiError;
                final errorMessage =
                    "${apiError?.errorData}, ${apiError?.errorMessage}";
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(errorMessage)));
              }
              if (state.showDialog != null) {
                _showDialog();
              }
              if (state.navigate != null) {
                Navigator.pop(context);
              }
            }
          },
          listenWhen: (prev, cur) {
            if (cur is ChangeUrlConsumerStates) {
              return true;
            }
            return false;
          },
          buildWhen: (prev, cur) {
            if (cur is ChangeUrlBuildStates) {
              return true;
            }
            return false;
          },
          builder: (context, state) {
            if (state is ChangeUrlBuildStates) {
              _showProgressBar = state.showProgressBar;
              _apiError = state.apiError;
              if (_apiError != null) {
                _errorMessage = "Error: ${_apiError?.errorData}";
              }
            }
            return Scaffold(
              appBar: AppBar(
                title: const Text("CHANGE BASE URL"),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerFloat,
              floatingActionButton:
                  _showProgressBar ? const CircularProgressIndicator() : null,
              body: Center(
                  child: SizedBox(
                width: viewPortWidth,
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
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
                              final baseUrl = _baseUrlController.text;
                              _changeBaseUrlCubit.getWelcomeMessage(baseUrl);
                            }
                          },
                        ),
                        if (_apiError != null)
                          Text(
                            _errorMessage!,
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.error),
                          ),
                        const SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            hideKeyboard(context);
                            if (_formKey.currentState!.validate()) {
                              final baseUrl = _baseUrlController.text;
                              _changeBaseUrlCubit.getWelcomeMessage(baseUrl);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Theme.of(context).colorScheme.primary,
                              foregroundColor: Colors.white),
                          child: const Text("Change Base Url"),
                        )
                      ],
                    ),
                  ),
                ),
              )),
            );
          },
        );
      },
    );
  }

  bool _validateUrl(String uri) {
    return Uri.parse(uri).isAbsolute;
  }
}
