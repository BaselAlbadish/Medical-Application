import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mdcin_ca/core/presentation/core_constants.dart';

class CustomTextFormField extends StatelessWidget {
  TextEditingController controller;
  String text;
  IconData? iconData;
  TextInputType textInputType;
  FormFieldValidator<String>? validation;
  String? validationMessage;
  GestureTapCallback? onTap;
  ValueChanged<String>? onChange;
  bool isSecure = false;
  bool enabled = true;
  IconData? suffix;
  VoidCallback? suffixFunction;
  List<TextInputFormatter>? inputFormatter;

  CustomTextFormField({
    Key? key,
    required this.controller,
    required this.text,
    required this.textInputType,
    this.iconData,
    this.validation,
    this.validationMessage,
    this.onTap,
    this.onChange,
    this.isSecure = false,
    this.enabled = true,
    this.suffix,
    this.suffixFunction,
    this.inputFormatter
  }) : super(key: key);

  double paddingText(IconData? icon, IconData? suff) {
    if (icon != null && suff != null) {
      return 1;
    } else if (icon != null) {
      return 3;
    }
    return 1;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.loose,
      children: <Widget>[
        Container(
          height: 45,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 7,
                offset: const Offset(0, 5), // changes position of shadow
              ),
            ],
            borderRadius: const BorderRadius.all(Radius.circular(30)),
          ),
        ),
        TextFormField(
          style: const TextStyle(color: Color(0xff11476c)),
          controller: controller,
          // textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            contentPadding: suffix != null
                ? const EdgeInsets.only(left: 15, top: 12)
                : const EdgeInsets.only(left: 15),
            hintText: text,
            // prefixIconConstraints: BoxConstraints(maxWidth: 30, maxHeight: 30),
            hintStyle: TextStyle(
              color: const Color(0xff9d9d9d).withOpacity(0.5),
              height: paddingText(iconData, suffix),
            ),
            suffixIcon: suffix != null
                ? IconButton(
                    onPressed: suffixFunction,
                    icon: Icon(suffix),
                  )
                : null,
            border: InputBorder.none,
            prefixIcon: iconData != null
                ? Icon(
                    iconData,
                    // size: 3.0,
                    color: KMediumBlue,
                  )
                : null,
            errorText: validationMessage,
          ),
          onChanged: onChange,
          onTap: onTap,
          enabled: enabled,
          keyboardType: textInputType,
          validator: validation,
          obscureText: isSecure,
          inputFormatters: inputFormatter
        ),
      ],
    );
  }
}
