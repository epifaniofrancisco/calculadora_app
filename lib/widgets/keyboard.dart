import 'package:calculadora_app/widgets/button.dart';
import 'package:calculadora_app/widgets/button_row.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) cb;

  const Keyboard({Key? key, required this.cb}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        child: Column(children: [
          ButtonRow(buttons: [
            Button(text: 'c', cb: cb, colorText: Colors.white, color: Button.OPERATION,),
            Button.operation(
              text: '÷',
              cb: cb,
            ),
            Button.operation(text: 'x', cb: cb),
            Button.operation(
              text: 'del',
              cb: cb,
            ),
          ]),
          SizedBox(height: 1),
          ButtonRow(buttons: [
            Button(text: '7', cb: cb),
            Button(text: '8', cb: cb),
            Button(text: '9', cb: cb),
            Button.operation(text: '-', cb: cb),
          ]),
          SizedBox(height: 1),
          ButtonRow(buttons: [
            Button(text: '4', cb: cb),
            Button(text: '5', cb: cb),
            Button(text: '6', cb: cb),
            Button.operation(text: '+', cb: cb),
          ]),
          SizedBox(height: 1),
          ButtonRow(buttons: [
            Button(text: '1', cb: cb),
            Button(text: '2', cb: cb),
            Button(text: '3', cb: cb),
            Button.operation(text: '%', cb: cb),
          ]),
          SizedBox(height: 1),
          ButtonRow(buttons: [
            Button(text: '0', cb: cb),
            Button(text: '.', cb: cb),
            Button(text: '=', big: true, cb: cb, color: Button.OPERATIONTEXT, sizeText: 50,),
          ])
        ]));
  }
}
