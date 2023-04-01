import 'package:flutter/material.dart';

class ErrorAlertWidget extends StatelessWidget {
  const ErrorAlertWidget({
    Key? key,
    this.title,
    required this.actions,
    this.content,
  }) : super(key: key);

  final title;
  final content;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: actions,
      title: title,
      content: content,
    );
  }
}