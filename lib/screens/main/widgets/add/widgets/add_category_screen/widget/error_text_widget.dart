import 'package:flutter/material.dart';
import 'package:pos_mini/util/api_error/api_error.dart';

class ErrorTextWidget extends StatelessWidget {
  final ApiError apiError;

  const ErrorTextWidget({super.key, required this.apiError});

  @override
  Widget build(BuildContext context) {
    final errorMessage = "${apiError.errorMessage}, ${apiError.errorData}";
    return Center(
      child: Text(
        errorMessage,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.red,
        ),
      ),
    );
  }
}
