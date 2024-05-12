import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  
  final VoidCallback onPressed;

  const CustomIconButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.facebook),
      onPressed: onPressed,
    );
  }
}