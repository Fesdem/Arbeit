import 'package:arbeit/common/constants/styles/text_styles.dart';
import 'package:arbeit/common/constants/texts.dart';
import 'package:arbeit/common/utils/elev_btn_widget.dart';
import 'package:arbeit/common/utils/text_btn_widget.dart';
import 'package:arbeit/features/widgets/title_widget.dart';
import 'package:arbeit/routes.dart';
import 'package:arbeit/common/information/policy_page.dart';
import 'package:arbeit/common/information/terms_page.dart';
import 'package:arbeit/common/constants/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(23.r),
        child: Column(
          children: [
            SizedBox(height: 40.h),
            AppTitle(),
            SizedBox(height: 10.h),
            Text(
              Texts.continueText,
              textAlign: TextAlign.center,
              style: AppTextStyle.subtitleTextStyle,
            ),
            SizedBox(height: 50.h),
            ElevBtn(
              context: context,
              buttonAction: () {},
              bgcolor: AppColors.backgroundColor,
              child: signInMethod(
                imagePath: Texts.googleImagePath,
                method: Texts.googleContinueText,
              ),
            ),
            SizedBox(height: 24.h),
            ElevBtn(
              context: context,
              buttonAction: () {},
              bgcolor: AppColors.backgroundColor,
              child: signInMethod(
                imagePath: Texts.facebookImagePath,
                method: Texts.facebookContinueText,
              ),
            ),
            SizedBox(height: 24.h),
            ElevBtn(
              context: context,
              buttonAction: () {
                Navigator.of(context).pushReplacementNamed(emailPage);
              },
              bgcolor: AppColors.tertiary,
              child: signInMethod(
                method: Texts.emailLoginText,
              ),
            ),
            SizedBox(height: 40.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Texts.statusQueryText,
                  style: AppTextStyle.secElevTextStyle,
                ),
                TextBtn(
                  context: context,
                  buttonAction: () {
                    Navigator.of(context)
                        .pushReplacementNamed(registrationPage);
                  },
                  child: Text(
                    Texts.newText,
                    style: AppTextStyle.primElevTextStyle,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Center(
              child: Text(
                Texts.firTermText,
                style: AppTextStyle.terElevTextStyle,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextBtn(
                  context: context,
                  buttonAction: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => TermsPage()),
                    );
                  },
                  child: Text(
                    Texts.termText,
                    style: AppTextStyle.terElevTextStyle,
                  ),
                ),
                SizedBox(width: 3),
                Text(
                  'and',
                  style: TextStyle(
                    color: AppColors.secondary,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: 3),
                TextBtn(
                  context: context,
                  buttonAction: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => PolicyPage()));
                  },
                  child: Text(
                    Texts.privacyText,
                    style: AppTextStyle.terElevTextStyle,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget signInMethod({
  String? imagePath,
  required String method,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      imagePath != null
          ? SvgPicture.asset(
              imagePath,
              width: 20,
              height: 20,
            )
          : const SizedBox(),
      SizedBox(width: 10),
      Text(
        method,
        style: AppTextStyle.secElevTextStyle,
      ),
    ],
  );
}
