import 'package:arbeit/common/constants/styles/text_styles.dart';
import 'package:arbeit/common/constants/texts.dart';
import 'package:arbeit/common/utils/elev_btn_widget.dart';
import 'package:arbeit/routes.dart';
import 'package:arbeit/common/constants/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeSplashPage extends StatelessWidget {
  const WelcomeSplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 465.h,
              color: Colors.blue[50],
              child: Image.asset(
                Texts.welcomeSplashImagePathText,
              ),
            ),
            SizedBox(height: 40.h),
            Text(
              Texts.jobRecText,
              textAlign: TextAlign.center,
              style: AppTextStyle.splashTextStyle,
            ),
            Text(
              Texts.secJobRecText,
              textAlign: TextAlign.center,
              style: AppTextStyle.splashTextStyle,
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                Texts.welcomeBodyText,
                textAlign: TextAlign.center,
                style: AppTextStyle.subtitleTextStyle,
              ),
            ),
            SizedBox(height: 40.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 35.h,
                  width: 85.w,
                  child: ElevBtn(
                    context: context,
                    buttonAction: () {
                      Navigator.of(context).pushReplacementNamed(loginPage);
                    },
                    bgcolor: AppColors.elevatedButtonColor,
                    child: Text(
                      Texts.loginText,
                      style: AppTextStyle.elevatedTextStyle,
                    ),
                  ),
                ),
                SizedBox(width: 20.w),
                ElevBtn(
                    context: context,
                    buttonAction: () {
                      Navigator.of(context)
                          .pushReplacementNamed(registrationPage);
                    },
                    bgcolor: AppColors.backgroundColor,
                    side: true,
                    child: Text(
                      Texts.anewText,
                      style: AppTextStyle.secElevatedTextStyle,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
