import 'package:arbeit/common/constants/styles/text_styles.dart';
import 'package:arbeit/common/utils/elev_btn_widget.dart';
import 'package:flutter/material.dart';
import 'package:arbeit/common/constants/texts.dart';
import 'package:arbeit/routes.dart';
import 'package:arbeit/common/constants/styles/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashPage extends StatelessWidget {
  static const routeName = Texts.splashText;

  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 465.h,
              color: Colors.blue[50],
              child: Image.asset(Texts.splashImagePathText),
            ),
            SizedBox(height: 40.h),
            Text(
              Texts.monitorText,
              textAlign: TextAlign.center,
              style: AppTextStyle.splashTextStyle,
            ),
            Text(
              Texts.secMonitorText,
              textAlign: TextAlign.center,
              style: AppTextStyle.splashTextStyle,
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                Texts.splashBodyText,
                textAlign: TextAlign.center,
                style: AppTextStyle.subtitleTextStyle,
              ),
            ),
            SizedBox(height: 40.h),
            SizedBox(
              height: 35.h,
              width: 75.w,
              child: ElevBtn(
                context: context,
                buttonAction: () {
                  Navigator.of(context).pushReplacementNamed(welcomePage);
                },
                bgcolor: AppColors.elevatedButtonColor,
                child: Text(
                  Texts.nextText,
                  style: AppTextStyle.elevatedTextStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
