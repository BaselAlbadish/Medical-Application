import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {


  const CustomButton({
    Key? key,
    required this.isActive,
    required this.text,
    required this.context,
  }) : super(key: key);

  final bool isActive;
  final String text;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 46,
      decoration: BoxDecoration(
        color: _getBackgroundColor(isActive),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Color(0xfff5f5f5),
            fontSize: 18,
        ),),
      ),
    );
  }


// TODO: temporary: how to pass context to a child widget.

  Color _getBackgroundColor (bool isActive) {
     return isActive ? const Color(0xff1ac1dd):
        const Color(0xff9d9d9d);
  }


}