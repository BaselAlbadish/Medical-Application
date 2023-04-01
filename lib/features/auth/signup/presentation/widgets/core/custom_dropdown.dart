import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropDown<T> extends StatefulWidget {
  CustomDropDown(
    this.context, {
    Key? key,
    required this.items,
    required this.callBack,
    required this.label,
    required this.isEnabled,
  }) : super(key: key);

  final List<T> items;
  final void Function(T?)? callBack;
  String label;
  final BuildContext context;
  final bool isEnabled;

  @override
  State<CustomDropDown<T>> createState() => _CustomDropDownState<T>();
}

class _CustomDropDownState<T> extends State<CustomDropDown<T>> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      width: 100.w,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        boxShadow: widget.isEnabled
            ? [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 6,
                  offset: const Offset(0, 0), // changes position of shadow
                ),
              ]
            : [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(0, 0), // changes position of shadow
                ),
            ],
      ),
      child: DropdownButton<T>(
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        iconSize: 0,
        style: TextStyle(
          color: Theme.of(widget.context).hintColor,
        ),
        hint: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: Icon(
                Icons.arrow_drop_down,
                color: widget.isEnabled
                    ? Theme.of(widget.context).hintColor
                    : Theme.of(widget.context).hintColor.withOpacity(0.5),
              ),
            ),
            Text(
              widget.label,
              style: TextStyle(
                color: widget.isEnabled
                    ? Theme.of(widget.context).hintColor
                    : Theme.of(widget.context).hintColor.withOpacity(0.5),
              ),
            ),
          ],
        ),
        underline: Container(),
        items: widget.isEnabled
            ? widget.items.map((value) {
                return DropdownMenuItem<T>(
                  onTap: () => value,
                  value: value,
                  child: Text(value.toString()),
                );
              }).toList()
            : [],
        onChanged: (item) {
          setState(() {
            widget.label = item.toString();
            widget.callBack!(item);
          });
        },
      ),
    );
  }
}