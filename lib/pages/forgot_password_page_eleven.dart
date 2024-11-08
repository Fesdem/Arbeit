import 'package:arbeit/pages/forgot_page_twelve.dart';
import 'package:flutter/material.dart';
import 'package:arbeit/styles/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgetPage extends StatelessWidget {
  const ForgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(height: 50),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: SvgPicture.asset('asset/svg/ic_back.svg')),
                  SizedBox(width: 20),
                  Text(
                    'Forgot Password',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              Text(
                'Select a contact detail to reset your password',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: AppColors.hintStyle,
                ),
              ),
              SizedBox(height: 50),
              Container(
                height: 95,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 2,
                    color: AppColors.elevatedButtonColor,
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 30),
                    SvgPicture.asset('asset/svg/ic_message.svg'),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 95,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 2,
                    color: AppColors.elevatedButtonColor,
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 30),
                    SvgPicture.asset('asset/svg/ic_inbox.svg'),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              SizedBox(height: 281),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => RecoverPage()));
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
