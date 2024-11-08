import 'package:arbeit/constants/routes.dart';
import 'package:arbeit/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class ManagerProfile extends StatelessWidget {
  const ManagerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: Column(
              children: [
                SizedBox(height: 40),
                Container(
                  height: 12,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        width: 1, color: AppColors.elevatedButtonColor),
                  ),
                  child: LinearProgressBar(
                    progressType: LinearProgressBar.progressTypeLinear,
                    progressColor: AppColors.elevatedButtonColor,
                    backgroundColor: AppColors.secondary3,
                    minHeight: 12,
                    currentStep: 2,
                    maxSteps: 2,
                  ),
                ),
                SizedBox(height: 40),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Your Profile',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Image.asset(
                  'asset/images/manager_logo.png',
                  height: 70,
                  width: 70,
                ),
                SizedBox(height: 15),
                Text(
                  'Upload your profile picture',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: AppColors.secondary,
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Full Name',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: AppColors.primary,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 49,
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
                      hintText: 'Abelman Pratt Apur',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: AppColors.hintStyle,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: AppColors.primary,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 49,
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
                      hintText: 'Apurpratt@twitter.com',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: AppColors.hintStyle,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Phone number',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: AppColors.primary,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 49,
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
                      hintText: 'San Fransisco, California',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: AppColors.hintStyle,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Position',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: AppColors.primary,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 49,
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
                      hintText: 'Hiring Manager',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: AppColors.hintStyle,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 45),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(secondMainPage);
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
                          'Save and Continue',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: AppColors.backgroundColor,
                          ),
                        ),
                      )),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
