import 'package:arbeit/common/constants/styles/text_styles.dart';
import 'package:arbeit/common/constants/texts.dart';
import 'package:arbeit/common/utils/elev_btn_widget.dart';
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
    MediaQuery.of(context).size.height;
    MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(23.r),
        child: Column(
          children: [
            SizedBox(height: 40.h),
            Center(
              child: SvgPicture.asset(Texts.appLogoPath),
            ),
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
                imagePath: 'asset/svg/google_logo.svg',
                method: 'Continue with Google',
              ),
            ),
            SizedBox(height: 24.h),
            ElevBtn(
              context: context,
              buttonAction: () {},
              bgcolor: AppColors.backgroundColor,
              child: signInMethod(
                imagePath: 'asset/svg/facebook_logo.svg',
                method: 'Continue with Facebook',
              ),
            ),
            SizedBox(height: 24.h),
            ElevBtn(
              context: context,
              buttonAction: () {},
              bgcolor: AppColors.tertiary,
              child: signInMethod(
                method: 'Log In with E-mail',
              ),
            ),
            SizedBox(height: 40.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: AppColors.secondary,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(registrationPage);
                    },
                    child: Text(
                      'Register Here',
                      style: TextStyle(
                        color: AppColors.elevatedButtonColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
              ],
            ),
            SizedBox(height: 40),
            Center(
              child: Text(
                "By creating an account, you accept Job finder’s",
                style: TextStyle(
                  color: AppColors.secondary,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => TermsPage()));
                    },
                    child: Text(
                      'Terms of Service',
                      style: TextStyle(
                        color: AppColors.elevatedButtonColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
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
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PolicyPage()));
                    },
                    child: Text(
                      'Privacy Policy',
                      style: TextStyle(
                        color: AppColors.elevatedButtonColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
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
        style: TextStyle(
          color: AppColors.primary,
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
      ),
    ],
  );
}
