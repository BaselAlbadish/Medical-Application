import 'package:flutter/material.dart';

class GeneratedEmailWidget extends StatelessWidget {
  const GeneratedEmailWidget(
    this.context, {
    Key? key,
    required this.child,
  }) : super(key: key);

  final BuildContext context;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Theme.of(this.context).primaryColor,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: const Offset(0, 5), // changes position of shadow
                ),
              ],
            )),
        Container(
          height: 45,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Theme.of(this.context).backgroundColor,
            borderRadius: BorderRadius.circular(30),
            // border: Border.all(color: Theme.of(this.context).primaryColor),
          ),
          child: child,
        ),
      ],
    );
  }
}
