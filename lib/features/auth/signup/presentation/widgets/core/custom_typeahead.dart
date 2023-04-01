import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:mdcin_ca/features/auth/signup/presentation/widgets/core/custom_sizeBox.dart';

class CustomTypeAhead<T> extends StatelessWidget {
  CustomTypeAhead({
    Key? key,
    this.errorText,
    required this.context,
    required this.hintText,
    required this.label,
    required this.optionsBuilder,
    required this.onSelected,
    required this.suggestionsCallback,
    required this.controller,
  }) : super(key: key);

  String? errorText;
  final BuildContext context;
  final String hintText;
  final String label;
  final ItemBuilder<T> optionsBuilder;
  final SuggestionsCallback<T> suggestionsCallback;
  final TextEditingController controller;

  final void Function(T) onSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(this.context).textTheme.headline2,
        ),
        CustomSizeBox(),
        Stack(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: const Offset(0, 5) // changes position of shadow
                      ),
                ],
                borderRadius: const BorderRadius.all(Radius.circular(30)),
              ),
            ),
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                ),
                child: TypeAheadFormField<T>(
                  hideSuggestionsOnKeyboardHide: false,
                  suggestionsCallback: suggestionsCallback,
                  hideOnEmpty: true,
                  itemBuilder: optionsBuilder,
                  onSuggestionSelected: onSelected,
                  textFieldConfiguration: TextFieldConfiguration(
                    style: const TextStyle(color: Color(0xff11476c)),
                    controller: controller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: hintText,
                      errorText: errorText,
                      hintStyle: TextStyle(color: const Color(0xff9d9d9d).withOpacity(0.5)),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
