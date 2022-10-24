import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Login to your\nAccount',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        height: 1.5,
      ),
    );
  }
}
