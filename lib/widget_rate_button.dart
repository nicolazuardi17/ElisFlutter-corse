import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  static const String LexuryTax = "22";
  static const String FoodTax = "10";
  static const String AgriTax = "4";

  String rate;
  Function()? onButtonPressed;
  bool enabled;
  CustomButton(this.rate, this.onButtonPressed, this.enabled);

  @override
  Widget build(BuildContext ctx) {
    return Container(
        child: TextButton(
      style: _getStateStyle(),
      child: Text(
        rate,
        style: _getTextStyle(),
      ),
      onPressed: onButtonPressed,
    ));
  }

  changeState(int? value) {
    return value;
  }

  ButtonStyle _getStateStyle() {
    return TextButton.styleFrom(
      backgroundColor: enabled ? Colors.blue : Colors.grey,
    );
  }

  TextStyle _getTextStyle() {
    return TextStyle(
      color: Colors.white,
    );
  }
}

class CalculateTaxesButton extends StatelessWidget {
  String text = " ";
  Function()? onButtonPressed;

  Widget build(BuildContext ctx) {
    return Container(
        child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.blue,
      ),
      child: Text(text,
          style: TextStyle(
            color: Colors.white,
          )),
      onPressed: onButtonPressed,
    ));
  }
}

class Iva extends StatelessWidget {
  String val;

  Iva(this.val);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(this.val),
    );
  }
}
