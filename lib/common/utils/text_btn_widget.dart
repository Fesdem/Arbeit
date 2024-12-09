import 'package:flutter/material.dart';

Widget TextBtn({
  required BuildContext context,
  required dynamic buttonAction,
  required Widget child,
}) {
  return TextButton(
    onPressed: buttonAction,
    child: child,
  );
}
