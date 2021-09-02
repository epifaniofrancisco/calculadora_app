import 'package:calculadora_app/widgets/button.dart';
import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  final List<Button> buttons;

  const ButtonRow({Key? key, required this.buttons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold([], (list, b) {
          list.isEmpty
              ? list.add(b)
              : list.addAll([
                  SizedBox(
                    width: 1,
                  ),
                  b
                ]);
          return list;
        }),
      ),
    );
  }
}
