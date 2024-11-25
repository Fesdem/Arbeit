import 'package:arbeit/common/constants/styles/text_styles.dart';
import 'package:arbeit/common/constants/texts.dart';
import 'package:arbeit/common/utils/elev_btn_widget.dart';
import 'package:arbeit/common/utils/field_widget.dart';
import 'package:arbeit/common/utils/text_btn_widget.dart';
import 'package:arbeit/features/widgets/title_widget.dart';
import 'package:arbeit/routes.dart';
import 'package:arbeit/common/information/policy_page.dart';
import 'package:arbeit/common/information/terms_page.dart';
import 'package:arbeit/features/user_information.dart';
import 'package:arbeit/common/constants/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailLoginPage extends StatelessWidget {
  const EmailLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.height;
    MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(26.r),
            child: Column(
              children: [
                SizedBox(height: 86.h),
                AppTitle(),
                SizedBox(height: 10.h),
                Text(
                  Texts.accLoginText,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.subtitleTextStyle,
                ),
                SizedBox(height: 50.h),
                Field(
                  hint: Texts.emailReqText,
                  hintStyle: AppTextStyle.secTertElevTextStyle,
                  isSeen: true,
                ),
                SizedBox(height: 15.h),
                Field(
                  hint: Texts.passReqText,
                  hintStyle: AppTextStyle.secTertElevTextStyle,
                  isSeen: true,
                ),
                SizedBox(height: 15.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextBtn(
                    context: context,
                    buttonAction: () {},
                    child: Text(
                      Texts.forgotText,
                      style: AppTextStyle.terTextStyle,
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                SizedBox(
                  width: double.infinity,
                  child: ElevBtn(
                    context: context,
                    buttonAction: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) => UserStatusPage()),
                        ),
                      );
                    },
                    bgcolor: AppColors.tertiary,
                    child: Text(
                      Texts.emailLoginText,
                      style: AppTextStyle.elevatedTextStyle,
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Texts.statusQueryText,
                      style: AppTextStyle.secPrimaryTextStyle,
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
                SizedBox(height: 40.h),
                Center(
                  child: Text(
                    Texts.firTermText,
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
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => TermsPage()));
                        },
                        child: Text(
                          'Terms of Service',
                          style: TextStyle(
                            color: AppColors.tertiary,
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
                            color: AppColors.tertiary,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
