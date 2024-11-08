import 'package:arbeit/constants/routes.dart';
import 'package:flutter/material.dart';
import 'package:arbeit/styles/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({super.key});

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.height;
    MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              children: [
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: SvgPicture.asset('asset/svg/ic_back.svg')),
                ),
                SizedBox(height: 20),
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
                    currentStep: 4,
                    maxSteps: 4,
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Skills',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    SvgPicture.asset('asset/svg/ic_plus.svg'),
                  ],
                ),
                SizedBox(height: 20),
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
                    ),
                  ),
                ),
                SizedBox(height: 450),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed(congratsPage);
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
