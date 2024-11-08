import 'package:arbeit/constants/routes.dart';
import 'package:arbeit/pages/forgot_password_page_eleven.dart';
import 'package:arbeit/pages/policy_page_twentyfive.dart';
import 'package:arbeit/pages/terms_page_twentyfour.dart';
import 'package:arbeit/pages/user_information_two.dart';
import 'package:arbeit/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmailPage extends StatelessWidget {
  const EmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.height;
    MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(26),
            child: Column(
              children: [
                SizedBox(height: 86),
                Center(
                  child: SvgPicture.asset('asset/svg/logo.svg'),
                ),
                SizedBox(height: 10),
                Text(
                  'Log into your account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 50),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'E-mail (Required)',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: AppColors.hintStyle,
                        fontSize: 12,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(
                          10,
                        )),
                      )),
                ),
                SizedBox(height: 15),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Password (Required)',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: AppColors.hintStyle,
                        fontSize: 12,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(
                          10,
                        )),
                      )),
                ),
                SizedBox(height: 15),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ForgetPage()));
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: AppColors.secondary,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )),
                SizedBox(height: 15),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => SecondUserInformationPage())));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary2,
                      minimumSize: Size(321, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    child: Text(
                      'Log in with Email',
                      style: TextStyle(
                        color: AppColors.backgroundColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                SizedBox(height: 40),
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
                    'By creating an account, you accept Job finder’s',
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
        ),
      ),
    );
  }
}
