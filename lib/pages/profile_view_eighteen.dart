import 'package:arbeit/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width;
    MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
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
                      'View Profile',
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
              SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Full name',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 40,
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
                    hintText: 'Oluwole Cole Babatunde',
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
                  'Email',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 40,
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
                    hintText: 'babatundeoc@gmail.com',
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
                  'Date of birth',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 40,
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
                    hintText: 'September 30, 1997',
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
                  'Phone number',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 40,
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
                    hintText: '+234 9012345678',
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
                  'Occupation',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 40,
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
                    hintText: 'Brand and Product Designer',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColors.hintStyle,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
