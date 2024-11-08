import 'package:arbeit/pages/main_page_fourteen.dart';
import 'package:flutter/material.dart';
import 'package:arbeit/styles/app_colors.dart';

class CongratsPage extends StatefulWidget {
  const CongratsPage({super.key});

  @override
  State<CongratsPage> createState() => _CongratsPageState();
}

class _CongratsPageState extends State<CongratsPage> {
  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.height;
    MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(height: 200),
              Center(
                child: Image.asset(
                  'asset/images/check_mark.png',
                  height: 80,
                  width: 80,
                ),
              ),
              SizedBox(height: 50),
              Text(
                '.Congrats!',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Your account is ready to use.',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 247),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MainPage()));
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
    );
  }
}
