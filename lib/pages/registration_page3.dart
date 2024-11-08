import 'package:arbeit/constants/routes.dart';
import 'package:arbeit/pages/policy_page_twentyfive.dart';
import 'package:arbeit/pages/terms_page_twentyfour.dart';
import 'package:arbeit/pages/user_information_page_twentyseven.dart';
import 'package:arbeit/styles/app_colors.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.height;
    MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 53),
                Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'asset/images/app_logo.png',
                      height: 60,
                      width: 150,
                    )),
                SizedBox(height: 15),
                Text(
                  'Create an account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 43,
                  width: 322,
                  decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1,
                      color: AppColors.elevatedButtonColor,
                    ),
                  ),
                  child: TextField(
                    maxLines: null,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Full name (Required)',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: AppColors.hintStyle,
                        fontSize: 12,
                      ),
                      contentPadding: EdgeInsets.all(6),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 43,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1,
                      color: AppColors.elevatedButtonColor,
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'E-mail (Required)',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: AppColors.hintStyle,
                        fontSize: 12,
                      ),
                      contentPadding: EdgeInsets.all(6),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 43,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1,
                      color: AppColors.elevatedButtonColor,
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Password (Required)',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: AppColors.hintStyle,
                        fontSize: 12,
                      ),
                      contentPadding: EdgeInsets.all(6),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => UserInfo()));
                  },
                  child: Container(
                      height: 47,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.elevatedButtonColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Create An Account',
                          style: TextStyle(
                            color: AppColors.backgroundColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                ),
                SizedBox(height: 40),
                Text(
                  'OR',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 15),
                GestureDetector(
                  onTap: () {
                    // Navigator.of(context).pushReplacementNamed(completionPage);
                  },
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: AppColors.backgroundColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1,
                        color: AppColors.elevatedButtonColor,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'asset/images/google_logo.jpg',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Create an account with Google',
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                GestureDetector(
                  onTap: () {
                    // Navigator.of(context).pushReplacementNamed(completionPage);
                  },
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                        color: AppColors.backgroundColor,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 1, color: AppColors.elevatedButtonColor)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'asset/images/facebook_logo.jpg',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Create an account with Facebook',
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40.12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text.rich(TextSpan(children: [
                      TextSpan(
                          text: 'Already have an account?  ',
                          style: TextStyle(
                            color: AppColors.secondary,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          )),
                    ])),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed(loginPage);
                        },
                        child: Text('Log In',
                            style: TextStyle(
                              color: AppColors.primary2,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ))),
                  ],
                ),
                SizedBox(height: 35),
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
                              builder: ((context) => TermsPage())));
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
                              builder: ((context) => PolicyPage())));
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
