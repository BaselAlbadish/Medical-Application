import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/core/presentation/responsive_logic/logic.dart';

import '../../../../../core/presentation/core_constants.dart';

class DropDown extends StatefulWidget {
  String text;
  String? dropDownValue;
  List<String> items;
  Function(String?) onChange;

  DropDown({required this.onChange, required this.text, required this.dropDownValue, required this.items});

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 5.w,bottom: 10.h,top: 10.h),
      child: Container(
        height: 30.h,
        width: getScreenWidth(context) / 3.1,
        //width: 116.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 6,
              offset: const Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: DropdownButton<String>(
          underline: DropdownButtonHideUnderline(child: Container()),
          isExpanded: true,
          hint: Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: Text(
              widget.text,
              style: TextStyle(color: KGrey, fontSize: 14.sp),
            ),
          ),
          value: widget.dropDownValue,
          icon: Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: const Icon(Icons.keyboard_arrow_down),
          ),
          items: widget.items.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Padding(padding: EdgeInsets.only(left: 25.w), child: Text(items)),
            );
          }).toList(),
          onChanged: widget.onChange,

        ),
      ),
    );
  }
}
