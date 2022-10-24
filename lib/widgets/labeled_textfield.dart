import 'package:flutter/material.dart';

class LabeledTextField extends StatelessWidget {
  final String label;
  final InputDecoration? inputDecoration;
  final bool? obscureText;
  final ValueChanged<String>? onChanged;
  final bool? readOnly;
  final TextEditingController? controller;

  const LabeledTextField({
    super.key,
    required this.label,
    this.inputDecoration,
    this.obscureText,
    this.onChanged,
    this.readOnly,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(label,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              )),
        ),
        TextFormField(
          obscureText: obscureText ?? false,
          decoration: inputDecoration,
          onChanged: onChanged,
          readOnly: readOnly ?? false,
          controller: controller,
        )
      ],
    );
  }
}
