import 'package:flutter/material.dart';

class CusomTextFormField extends StatelessWidget {
  const CusomTextFormField({
    Key? key,
    required this.context,
    required this.hintText,
    required this.label,
    required this.isObscure,
    this.icon,
    required this.onChanged,
    required this.validator,
  }) : super(key: key);
  final BuildContext context;
  final String hintText;
  final String label;
  final bool isObscure;
  final IconButton? icon;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: Theme.of(this.context).textTheme.headline2,
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 70,
            child: TextFormField(
    
              onChanged: onChanged,
              obscureText: isObscure,
              textAlignVertical: TextAlignVertical.center,
              autocorrect: false,
              validator: validator,
              decoration: InputDecoration(
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(30),
                ),
                
                errorStyle: const TextStyle(
                  fontSize: 12
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(30),
                ),
                suffixIcon: icon,
                contentPadding: const EdgeInsets.only(left: 20.0, top: 10),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(
                      color: Theme.of(this.context).hintColor.withOpacity(0.5)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(
                    color: Theme.of(this.context).primaryColor,
                  ),
                ),
                hintText: hintText,
                hintStyle: TextStyle(
                  
                  color: Theme.of(this.context).hintColor.withOpacity(0.5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
