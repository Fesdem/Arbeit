import 'package:arbeit/pages/appearance_page_twentyone.dart';
import 'package:arbeit/pages/help_page_twentythree.dart';
import 'package:arbeit/pages/notification_page.dart';
import 'package:arbeit/pages/security_page_twentytwo.dart';
import 'package:arbeit/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width;
    MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: SvgPicture.asset(
                        'asset/svg/ic_back.svg',
                      )),
                  SizedBox(width: 15),
                  Container(
                    height: 35,
                    width: 200,
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AppearancePage()));
                },
                child: Container(
                  height: 54,
                  width: 245,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                    ),
                    border: Border.all(
                      width: 1,
                      color: AppColors.elevatedButtonColor,
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 25),
                      SvgPicture.asset(
                        'asset/svg/ic_circle.svg',
                        height: 22,
                        width: 22,
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Appearance',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => NotificationPage())));
                },
                child: Container(
                  height: 54,
                  width: 245,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                    ),
                    border: Border.all(
                      width: 1,
                      color: AppColors.elevatedButtonColor,
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 25),
                      SvgPicture.asset(
                        'asset/svg/ic_circle.svg',
                        height: 22,
                        width: 22,
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Notifications',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SecurityPage()));
                },
                child: Container(
                  height: 54,
                  width: 245,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                    ),
                    border: Border.all(
                      width: 1,
                      color: AppColors.elevatedButtonColor,
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 25),
                      SvgPicture.asset(
                        'asset/svg/ic_circle.svg',
                        height: 22,
                        width: 22,
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Security',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => HelpPage())));
                },
                child: Container(
                  height: 54,
                  width: 245,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                    ),
                    border: Border.all(
                      width: 1,
                      color: AppColors.elevatedButtonColor,
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 25),
                      SvgPicture.asset(
                        'asset/svg/ic_circle.svg',
                        height: 22,
                        width: 22,
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Help',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
