import 'package:arbeit/pages/profile_view_eighteen.dart';
import 'package:arbeit/pages/resources_page_nineteen.dart';
import 'package:arbeit/pages/settings_page_twenty.dart';
import 'package:arbeit/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width;
    MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 35,
                    width: double.infinity,
                    child: Text(
                      'Profile',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 27),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset('asset/images/avatar.png'),
                    ),
                    SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Oluwole Cole Babatunde',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Product, Brand Designer and Illustrator',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 9,
                          ),
                        ),
                        Text(
                          'Lagos, Nigeria',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 9,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ProfileView()));
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
                          'asset/svg/ic_profile_2.svg',
                          height: 25,
                          width: 25,
                        ),
                        SizedBox(width: 15),
                        Text(
                          'View profile',
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
                        'asset/svg/ic_note.svg',
                        height: 15,
                        width: 15,
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Saved Jobs',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ResourcesPage()));
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
                          'asset/svg/ic_resources.svg',
                          height: 25,
                          width: 25,
                        ),
                        SizedBox(width: 15),
                        Text(
                          'Resources',
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
                        MaterialPageRoute(builder: (context) => SettingsPage()));
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
                          'asset/svg/ic_settings.svg',
                          height: 25,
                          width: 25,
                        ),
                        SizedBox(width: 15),
                        Text(
                          'Settings',
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
                        'asset/svg/ic_log_out.svg',
                        height: 25,
                        width: 25,
                      ),
                      SizedBox(width: 15),
                      Text(
                        'Log out',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
