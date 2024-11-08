import 'package:arbeit/pages/main_page_fourteen.dart';
import 'package:arbeit/pages/main_page_two.dart';
import 'package:arbeit/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondUserInformationPage extends StatelessWidget {
  const SecondUserInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 355,
              width: double.infinity,
              color: AppColors.backgroundColor,
              child: Center(
                child: SvgPicture.asset('asset/svg/logo.svg'),
              ),
            ),
            Container(
              height: 406,
              width: double.infinity,
              color: Colors.blue[50],
              child: Padding(
                padding: const EdgeInsets.fromLTRB(32, 90, 32, 0),
                child: Column(
                  children: [
                    Text(
                      'You are......',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: AppColors.secondary,
                      ),
                    ),
                    SizedBox(height: 65),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: ((context) => MainPage())));
                            },
                            child: Container(
                              height: 135,
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    'asset/svg/ic_face.svg',
                                    height: 50,
                                    width: 50,
                                  ),
                                  SizedBox(height: 15),
                                  Text(
                                    'Looking for a job',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                              builder: ((context) => SecondMainPage())));
                            },
                            child: Container(
                              height: 135,
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    'asset/svg/ic_user.svg',
                                    height: 50,
                                    width: 50,
                                  ),
                                  SizedBox(height: 15),
                                  Text(
                                    'Looking for employees',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
