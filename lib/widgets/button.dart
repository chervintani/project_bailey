import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final double? width;
  final String text;
  final void Function()? onPressed;
  final Color? backgroundColor;
  final Color? textColor;

  const Button({
    super.key,
    this.width,
    required this.text,
    this.onPressed,
    this.backgroundColor = Colors.white,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: 58,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
