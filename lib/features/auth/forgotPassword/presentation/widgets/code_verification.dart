import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mdcin_ca/core/presentation/core_constants.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';

class VerificationCodeField extends StatefulWidget {
  VerificationCodeField({
    Key? key,
    required this.onCompleted,
    required this.textEditingController,
    required this.length,
    required this.onChanged,
  }) : super(key: key);

  TextEditingController textEditingController;
  int length;
  ValueChanged<String>? onCompleted;
  ValueChanged<String> onChanged;

  @override
  _VerificationCodeFieldState createState() => _VerificationCodeFieldState();
}

class _VerificationCodeFieldState extends State<VerificationCodeField> {
  String currentText = '';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: PinCodeTextField(
          appContext: context,
          length: widget.length,
          obscureText: false,
          animationType: AnimationType.scale,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(5),
            activeColor: KNewBlue,
            inactiveColor: KNewBlue,
            selectedColor: KNewBlue,
            activeFillColor: Colors.white,
            selectedFillColor: Colors.white,
            inactiveFillColor: Colors.white,
          ),
          animationDuration: const Duration(milliseconds: 300),
          backgroundColor: Colors.white,
          enableActiveFill: true,
          keyboardType: TextInputType.number,
          onCompleted:widget.onCompleted,
          onChanged: widget.onChanged,
        ),
      ),
    );
  }
}
