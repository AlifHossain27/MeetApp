import 'package:flutter/material.dart';
import 'package:meet/utils/colors.dart';

class CustomBtn extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomBtn({ 
    Key? key,
    required this.text,
    required this.onPressed, 
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ElevatedButton(
      onPressed:  onPressed,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 24,
          ),
      ),
      style: ElevatedButton.styleFrom(
        primary: buttonColor,
        minimumSize: const Size(
          double.infinity,
          50,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: const BorderSide(color: buttonColor),
      ),
      ),
    ),
    );
  }
}