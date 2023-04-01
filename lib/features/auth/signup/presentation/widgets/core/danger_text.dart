import 'package:flutter/material.dart';

class Dangertext extends StatelessWidget {
  const Dangertext({Key? key, required this.text, required this.context})
      : super(key: key);
  final String text;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(this.context).textTheme.bodyText1,
      textAlign: TextAlign.justify,
    );
  }
}
