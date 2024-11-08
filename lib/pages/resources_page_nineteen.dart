import 'package:arbeit/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResourcesPage extends StatelessWidget {
  const ResourcesPage({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width;
    MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                SizedBox(height: 30),
                Row(
                  children: [
                    SizedBox(height: 30),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: SvgPicture.asset('asset/svg/ic_back.svg')),
                    SizedBox(width: 15),
                    Container(
                      height: 35,
                      width: 200,
                      child: Text(
                        'Resources',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 27),
                Row(
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
                SizedBox(height: 25),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Resources',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Resume',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 49,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 23),
                      SvgPicture.asset(
                        'asset/svg/ic_pdf.svg',
                        height: 25,
                        width: 20,
                      ),
                      Text(''),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>));
                  },
                  child: Container(
                      height: 29,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.elevatedButtonColor,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 1, color: AppColors.elevatedButtonColor),
                      ),
                      child: Center(
                        child: Text(
                          'Upload updated resume',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: AppColors.backgroundColor,
                          ),
                        ),
                      )),
                ),
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Cover Letter',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 49,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 23),
                      SvgPicture.asset(
                        'asset/svg/ic_pdf.svg',
                        height: 25,
                        width: 20,
                      ),
                      Text(''),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>));
                  },
                  child: Container(
                      height: 29,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.backgroundColor,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 1, color: AppColors.elevatedButtonColor),
                      ),
                      child: Center(
                        child: Text(
                          'Upload new cover letter',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: AppColors.elevatedButtonColor,
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
