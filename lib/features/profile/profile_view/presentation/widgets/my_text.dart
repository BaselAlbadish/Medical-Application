import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  MyText({
    this.color = Colors.black,
    this.fontWeight = FontWeight.normal,
    required this.text,
    required this.fontSize,
    Key? key,
  }) : super(key: key);

  String? text;
  double? fontSize;
  Color? color;
  FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        color: color,
        fontSize: fontSize!,
        fontWeight: fontWeight!,
      ),
    );
  }
}
