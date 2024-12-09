import 'package:arbeit/common/constants/styles/colors.dart';
import 'package:flutter/material.dart';

Widget ElevBtn({
  required BuildContext context,
  required dynamic buttonAction,
  required Color bgcolor,
  required Widget child,
  double borderRadius = 10,
  bool side = false,
  Color sideColor = AppColors.tertiary,
}) {
  return ElevatedButton(
    onPressed: buttonAction,
    style: ElevatedButton.styleFrom(
      backgroundColor: bgcolor,
      side: side ? BorderSide(color: sideColor) : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            borderRadius,
          ),
        ),
      ),
    ),
    child: child,
  );
}
