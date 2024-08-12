import 'package:flutter/material.dart';
import 'package:spotify/common/helpers/is_dark_mode.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double? height;
  final bool isPrimary;

  const PrimaryButton(this.text,
      {super.key,
      required this.onPressed,
      this.height,
      required this.isPrimary});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          minimumSize: Size.fromHeight(height ?? 54),
          backgroundColor:
              isPrimary ? Theme.of(context).primaryColor : Colors.transparent,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
              side: BorderSide(
                  color: isPrimary ? Colors.transparent : Colors.grey.shade600,
                  width: 1,
                  style: BorderStyle.solid))),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: (isPrimary || context.isDarkMode)
              ? Colors.white
              : Colors.grey.shade800,
        ),
      ),
    );
  }
}
