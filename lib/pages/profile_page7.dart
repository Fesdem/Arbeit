import 'package:arbeit/pages/experience_page_eight.dart';
import 'package:arbeit/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
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
                    currentStep: 2,
                    maxSteps: 4,
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Education',
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
                    'School',
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
                      hintText: 'School',
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
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
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
                      hintText: 'Location',
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
                    'Degree',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
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
                      hintText: 'Degree',
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
                    'Field of Study',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
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
                      hintText: 'Field of Study',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: AppColors.hintStyle,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 19.5),
                Row(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'Start Date',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              'End Date',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 138),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ExperiencePage()));
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
