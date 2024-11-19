import 'package:arbeit/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ApplicationPage extends StatelessWidget {
  const ApplicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width;
    MediaQuery.of(context).size.height;

    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
        child: Column(
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 26, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 35,
                    child: Text(
                      'Applications',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('asset/svg/ic_note.svg')),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 26, 0),
              child: Container(
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
                    hintText: 'Search jobs, positions............',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColors.hintStyle,
                      fontSize: 12,
                    ),
                    suffixIcon: Icon(Icons.search),
                    suffixIconColor: AppColors.elevatedButtonColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: 27),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigator.of(context).
                    },
                    child: Container(
                      height: 29,
                      width: 33,
                      decoration: BoxDecoration(
                          color: AppColors.elevatedButtonColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 1, color: AppColors.elevatedButtonColor)),
                      child: Center(
                        child: Text(
                          'All',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            color: AppColors.backgroundColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      // Navigator.of(context).
                    },
                    child: Container(
                      height: 29,
                      width: 70,
                      decoration: BoxDecoration(
                          color: AppColors.backgroundColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 1, color: AppColors.elevatedButtonColor)),
                      child: Center(
                        child: Text(
                          'Accepted',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            color: AppColors.elevatedButtonColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      // Navigator.of(context).
                    },
                    child: Container(
                      height: 29,
                      width: 70,
                      decoration: BoxDecoration(
                          color: AppColors.backgroundColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 1, color: AppColors.elevatedButtonColor)),
                      child: Center(
                        child: Text(
                          'Interivew',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            color: AppColors.elevatedButtonColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      // Navigator.of(context).
                    },
                    child: Container(
                      height: 29,
                      width: 70,
                      decoration: BoxDecoration(
                          color: AppColors.backgroundColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 1, color: AppColors.elevatedButtonColor)),
                      child: Center(
                        child: Text(
                          'In Progress',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            color: AppColors.elevatedButtonColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {
                      // Navigator.of(context).
                    },
                    child: Container(
                      height: 29,
                      width: 70,
                      decoration: BoxDecoration(
                          color: AppColors.backgroundColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 1, color: AppColors.elevatedButtonColor)),
                      child: Center(
                        child: Text(
                          'Rejected',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            color: AppColors.elevatedButtonColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
