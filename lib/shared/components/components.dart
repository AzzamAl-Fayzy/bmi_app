import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color color = Colors.blue,
  required String text,
  required VoidCallback onPressed,
}) => Container(
      width: width,
      child: MaterialButton(
        onPressed: onPressed,
        color: color,
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );