import 'package:flutter/material.dart';

class LoadingDialog extends StatelessWidget {
  final String text;
  const LoadingDialog({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        height: 120,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: CircularProgressIndicator(),
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
