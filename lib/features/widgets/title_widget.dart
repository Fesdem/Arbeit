import 'package:arbeit/common/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget AppTitle() {
  return Center(
    child: SvgPicture.asset(Texts.appLogoPath),
  );
}
