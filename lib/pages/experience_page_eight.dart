import 'package:arbeit/pages/skills_page_nine.dart';
import 'package:flutter/material.dart';
import 'package:arbeit/styles/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({super.key});

  @override
  State<ExperiencePage> createState() => _experiencePageState();
}

class _experiencePageState extends State<ExperiencePage> {
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
                    currentStep: 3,
                    maxSteps: 4,
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Experience',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    SvgPicture.asset('asset/svg/ic_plus.svg'),
                  ],
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Job Title',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
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
                      hintText: 'Job',
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
                    'Employment Type',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
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
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Company Name',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
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
                      hintText: 'Company.Ltd',
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
                    'Industry',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
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
                    'Location',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
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
                      hintText: 'Lagos, Nigeria',
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
                    'Brief Description',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 99,
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
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: AppColors.hintStyle,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 138),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SkillsPage()));
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
                SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
