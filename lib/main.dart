// @dart=2.9

/*

Autor: Epifânio Francisco
Data: 03/09/2021
Função: Uma App de Calculadora simples com Flutter.

*/

import 'package:calculadora_app/screens/calculator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}
