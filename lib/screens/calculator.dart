import 'package:calculadora_app/models/memory.dart';
import 'package:calculadora_app/widgets/display.dart';
import 'package:calculadora_app/widgets/keyboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();

  _onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);
    
    return Container(
      child: Column(
        children: [
          Display(
            text: memory.value,
          ),
          Keyboard(
            cb: _onPressed,
          ),
        ],
      ),
    );
  }
}
