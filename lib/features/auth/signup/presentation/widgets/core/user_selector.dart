import 'package:flutter/material.dart';

class UserSelector extends StatelessWidget {
  const UserSelector({
    Key? key,
    required this.context,
    required this.text,
    required this.isActive,
  }) 
  : super(key: key);

  final BuildContext context;
  final String text; 
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 110,
      child: Center(
          child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          color: _getTextColor(this.context, isActive),
        ),
      )
      ),
      
      decoration: BoxDecoration(
        color: _getBackgroundColor(this.context, isActive),
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 7.0,
            spreadRadius: 5,
            offset: const Offset(0, 2.0),
          )
        ]
      ),
    );
  }

  Color _getBackgroundColor (BuildContext context, bool isActive) {
     return !isActive ? Theme.of(context).scaffoldBackgroundColor  :
        Theme.of(context).primaryColor;
  }

  Color _getTextColor (BuildContext context, bool isActive) {
     return isActive ? Theme.of(context).scaffoldBackgroundColor  :
        Theme.of(context).hintColor;
  }
}