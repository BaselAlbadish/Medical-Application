import 'package:flutter/material.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> CustomShowSnakBar({
  required BuildContext context,
  required String text,
}) => 
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("${text}"),
        duration: const Duration(seconds: 1),
      ),
    );
