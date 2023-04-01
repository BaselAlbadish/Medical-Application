import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mdcin_ca/features/auth/signup/domain/entities/individual/individual_model.dart';

class CustomAutoComplete extends StatelessWidget {
  CustomAutoComplete({
    Key? key,
    required this.context,
    required this.hintText,
    required this.label,
    required this.optionsBuilder,
    required this.onSelected,
  }) : super(key: key);

  final BuildContext context;
  final String hintText;
  final String label;
  final FutureOr<Iterable<Object>> Function(TextEditingValue) optionsBuilder;

  final void Function(dynamic)? onSelected;


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
        const SizedBox(
          height: 10,
        ),
        Autocomplete(
          onSelected: onSelected,
          fieldViewBuilder: (
            BuildContext context,
            TextEditingController textEditingController,
            FocusNode focusNode,
            VoidCallback onFieldSubmitted,
          ) {
            return  Stack(
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
                        offset:
                            const Offset(0, 5), // changes position of shadow
                      ),
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                      style: TextStyle(
                        color: Theme.of(this.context).indicatorColor,
                      ),
                      controller: textEditingController,
                      decoration: InputDecoration(
                        suffix: const Icon(Icons.keyboard_arrow_down),
                        contentPadding:
                            const EdgeInsets.all(15),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        hintText: hintText,
                        hintStyle: TextStyle(
                            color:
                                Theme.of(context).hintColor.withOpacity(0.2)),
                      ),
                      focusNode: focusNode,
                      onFieldSubmitted: (String value) {}),
                ),
              ],
            );
          },
          optionsBuilder: optionsBuilder,

        ),
      ],
    );
  }
}
