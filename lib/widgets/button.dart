import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  static const DEFAULT = Color.fromRGBO(43, 47, 63, 1);
  static const OPERATION = Color.fromRGBO(53, 55, 71, 1);
  static const OPERATIONTEXT = Color.fromRGBO(255, 187, 0, 1);

  final String text;
  final bool big;
  final Color color;
  final Color colorText;
  final double sizeText;
  final void Function(String) cb;

  const Button(
      {Key? key,
      required this.text,
      this.big = false,
      this.color = DEFAULT,
      this.colorText = Colors.white,
      required this.cb,
      this.sizeText = 22})
      : super(key: key);

  const Button.operation(
      {Key? key,
      required this.text,
      this.big = false,
      this.color = OPERATION,
      this.colorText = OPERATIONTEXT,
      required this.cb,
      this.sizeText = 35})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: big ? 2 : 1,
        child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder()),
                backgroundColor: MaterialStateProperty.all(this.color)),
            onPressed: () => cb(text),
            child: Text(
              text,
              style: GoogleFonts.roboto(
                color: this.colorText,
                fontSize: sizeText,
                fontWeight: FontWeight.w300
              )
            )));
  }
}