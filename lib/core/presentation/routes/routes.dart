//navigation
import 'package:flutter/material.dart';

void navigateTo({
  required context,
  required Widget,
}) =>
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Widget,
      ),
    );

void navigateToRemove({
  required context,
  required Widget,
}) =>
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => Widget),
        (Route<dynamic> route) => false);