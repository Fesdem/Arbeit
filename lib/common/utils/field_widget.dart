import 'package:flutter/material.dart';

Widget Field({
  required String hint,
  required TextStyle hintStyle,
  bool isSeen = false,
}) {
  return TextField(
    decoration: InputDecoration(
      hintText: hint,
      hintStyle: hintStyle,
      border: isSeen
          ? OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  10,
                ),
              ),
            )
          : null,
    ),
  );
}
