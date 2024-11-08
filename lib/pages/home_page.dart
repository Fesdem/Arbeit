import 'package:arbeit/pages/tip_page_fifteen.dart';
import 'package:arbeit/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.height;
    MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Column(
              children: [
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hello, Cole!',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 120),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('asset/svg/ic_bell.svg'),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('asset/svg/ic_menu.svg'),
                    ),
                  ],
                ),
                SizedBox(height: 21),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 49,
                        width: 231,
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
                    SizedBox(width: 7),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('asset/svg/ic_menu_2.svg')),
                    SizedBox(width: 0),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('asset/svg/ic_menu_3.svg')),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Daily Job Tips',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'See all',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: AppColors.elevatedButtonColor,
                          ),
                        )),
                  ],
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 124,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset(
                          'asset/images/job_tips_1.png',
                          height: 124,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => TipPage()));
                        },
                        child: Container(
                          height: 124,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: Stack(
                            children: [
                              Image.asset(
                                'asset/images/job_tips_2.png',
                                height: 124,
                                width: 200,
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                top: 73,
                                left: 42,
                                right: 35,
                                child: Text(
                                  'How to build a strong online and PDF portfolio',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    color: AppColors.primary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        height: 124,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset(
                          'asset/images/job_tips_3.png',
                          height: 124,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended for you',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'See all',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: AppColors.elevatedButtonColor,
                          ),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
