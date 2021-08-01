import 'package:calculator/components/Button.dart';
import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  final List<Button> buttons;

  ButtonRow(this.buttons);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold([], (previousValue, element) {
          previousValue.isEmpty
              ? previousValue.add(element)
              : previousValue.addAll([SizedBox(width: 1), element]);
          return previousValue;
        }),
      ),
    );
  }
}
