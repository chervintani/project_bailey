import 'package:flutter/material.dart';

class ModalListViewItem extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  final bool? isSelected;
  const ModalListViewItem({
    super.key,
    required this.text,
    this.onTap,
    this.isSelected,
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.centerLeft,
      color: Colors.white,
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: TextButton(
          onPressed: onTap,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  toUpperCase() {}

  onSelectProvince() {}
}
