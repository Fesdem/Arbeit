import 'package:arbeit/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:arbeit/styles/app_colors.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecoverPage extends StatelessWidget {
  const RecoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.height;
    MediaQuery.of(context).size.width;

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
                SizedBox(height: 190),
                Text(
                  'Code has been sent to +23490******89',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1,
                          color: AppColors.elevatedButtonColor,
                        ),
                      ),
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        maxLines: null,
                        // maxLength: 1,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                          hintText: '0',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1,
                          color: AppColors.elevatedButtonColor,
                        ),
                      ),
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        maxLines: null,
                        // maxLength: 1,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                          hintText: '0',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1,
                          color: AppColors.elevatedButtonColor,
                        ),
                      ),
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        maxLines: null,
                        // maxLength: 1,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                          hintText: '0',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1,
                          color: AppColors.elevatedButtonColor,
                        ),
                      ),
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        maxLines: null,
                        // maxLength: 1,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                          hintText: '0',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Text(
                  'Resend Code in',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 191),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(resetPassword);
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
