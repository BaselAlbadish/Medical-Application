import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class CustomPhoneNumberInputField extends StatelessWidget {
  const CustomPhoneNumberInputField({
    Key? key,
    required this.context,
    required this.hintText,
    required this.label,
    required this.onPhoneNumberChanged,
    required this.validator,
  }) : super(key: key);

  final BuildContext context;
  final String hintText;
  final String label;
  final void Function(PhoneNumber)? onPhoneNumberChanged;
  final String? Function(String?)? validator;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: 40.h,
            decoration: BoxDecoration(
              color: Theme.of(this.context).backgroundColor,
              borderRadius: BorderRadius.circular(30),
              // border: Border.all(style: BorderStyle.none),
              // border: Border.all(
              //   color: Theme.of(this.context).primaryColor,
              // ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: const Offset(0, 5), // changes position of shadow
                ),
              ],
            )),
        InternationalPhoneNumberInput(
          autoValidateMode: AutovalidateMode.disabled,
          textStyle: TextStyle(
            color: Theme.of(this.context).indicatorColor,
          ),
          validator: validator,
          inputDecoration: InputDecoration(
            // fillColor: Colors.white,
            contentPadding: const EdgeInsets.all(10.0),
            errorBorder: InputBorder.none,
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide.none,
            ),
            focusedBorder: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(
              color: Theme.of(this.context).hintColor.withOpacity(0.5),
            ),
          ),
          onInputChanged: onPhoneNumberChanged,
          selectorTextStyle: TextStyle(
            color: Theme.of(this.context).indicatorColor,
          ),
          selectorConfig: const SelectorConfig(
            selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
            showFlags: false,
            trailingSpace: false,
            setSelectorButtonAsPrefixIcon: true,
            leadingPadding: 12,
          ),
        ),
      ],
    );
  }
}