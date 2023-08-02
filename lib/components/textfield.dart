import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key});

  Color inputColor = Colors.purple.shade600;
  Color fillColor = Colors.grey.shade100;
  Color textStyleColor = Colors.black;
  final normalFont = FontWeight.normal;
  final boldFont = FontWeight.bold;
  final centerAlign = TextAlign.center;
  final customKeyboard = TextInputType.numberWithOptions(decimal: true);
  final inputLabelText = 'Write down the value to convert';

  @override
  Widget build(BuildContext context) {
    return TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: fillColor,
              labelText: inputLabelText,
              labelStyle: TextStyle(
              fontWeight: normalFont, 
              fontSize: 16,
              color: inputColor
            ),
           ),
           style: TextStyle(
            color: textStyleColor,
            fontSize: 20,
            fontWeight: boldFont
          ),
          textAlign: centerAlign,
          keyboardType: customKeyboard
    );
  }
}