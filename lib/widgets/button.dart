import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonText;
  VoidCallback onPressed;

  Button({
    required this.buttonText,
    required this.onPressed,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(buttonText),
    );
  }
}