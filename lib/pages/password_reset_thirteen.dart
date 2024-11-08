import 'package:arbeit/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:arbeit/styles/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                SizedBox(height: 50),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('asset/svg/ic_back.svg')),
                    SizedBox(width: 20),
                    Text(
                      'Reset Password',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Create a new password',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(height: 43),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'New Password',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 43,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1),
                  ),
                  child: TextField(
                    maxLines: null,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                      hintText: '**********',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: AppColors.hintStyle,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 26),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Confirm New Password',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 43,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1),
                  ),
                  child: TextField(
                    maxLines: null,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                      hintText: '**********',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: AppColors.hintStyle,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 23),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Remember Me',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 281),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(mainPage);
                  },
                  child: Container(
                      height: 47,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.elevatedButtonColor,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 1, color: AppColors.elevatedButtonColor),
                      ),
                      child: Center(
                        child: Text(
                          'Continue',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: AppColors.backgroundColor,
                          ),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
