import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final String text;
  const CustomBtn({ 
    Key? key,
    required this.text, 
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:  () { },
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 17,
          ),
      ),
    );
  }
}