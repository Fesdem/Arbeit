import 'package:arbeit/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});

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
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: SvgPicture.asset(
                        'asset/svg/ic_back.svg',
                      )),
                  SizedBox(width: 15),
                  Container(
                    height: 35,
                    width: 200,
                    child: Text(
                      'FAQ',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              ExpansionTile(
                title: Text(
                  'How to use this app',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Text(
                      'Mauris, aliquam leo volutpat sed. ' +
                          'Fermentum placerat sed quisque sit. ' +
                          'Senectus eget enim nunc, vel volutpat, scelerisque bibendum tincidunt. ' +
                          'Vestibulum lectus consequat massa enim consequat eget nunc etiam. ' +
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' +
                          'Mauris, aliquam leo volutpat sed. Fermentum placerat sed quisque sit. ' +
                          'vel volutpat, scelerisque bibendum tincidunt. ' +
                          'Vestibulum lectus consequat massa enim consequat eget nunc etiam' +
                          '.............................................................',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: AppColors.backgroundColor,
                      ),
                    ),
                  ),
                ],
                collapsedIconColor: AppColors.primary,
                iconColor: AppColors.elevatedButtonColor,
                collapsedBackgroundColor: AppColors.backgroundColor,
                backgroundColor: AppColors.hintStyle,
                collapsedTextColor: AppColors.primary,
                textColor: AppColors.backgroundColor,
              ),
              SizedBox(height: 30),
              ExpansionTile(
                title: Text(
                  'How to apply for jobs',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Text(
                      'Mauris, aliquam leo volutpat sed. ' +
                          'Fermentum placerat sed quisque sit. ' +
                          'Senectus eget enim nunc, vel volutpat, scelerisque bibendum tincidunt. ' +
                          'Vestibulum lectus consequat massa enim consequat eget nunc etiam. ' +
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' +
                          'Mauris, aliquam leo volutpat sed. Fermentum placerat sed quisque sit. ' +
                          'vel volutpat, scelerisque bibendum tincidunt. ' +
                          'Vestibulum lectus consequat massa enim consequat eget nunc etiam' +
                          '.............................................................',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: AppColors.backgroundColor,
                      ),
                    ),
                  ),
                ],
                collapsedIconColor: AppColors.primary,
                iconColor: AppColors.elevatedButtonColor,
                collapsedBackgroundColor: AppColors.backgroundColor,
                backgroundColor: AppColors.hintStyle,
                collapsedTextColor: AppColors.primary,
                textColor: AppColors.backgroundColor,
              ),
              SizedBox(height: 30),
              ExpansionTile(
                title: Text(
                  'Is this app free?',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Text(
                      'Mauris, aliquam leo volutpat sed. ' +
                          'Fermentum placerat sed quisque sit. ' +
                          'Senectus eget enim nunc, vel volutpat, scelerisque bibendum tincidunt. ' +
                          'Vestibulum lectus consequat massa enim consequat eget nunc etiam. ' +
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' +
                          'Mauris, aliquam leo volutpat sed. Fermentum placerat sed quisque sit. ' +
                          'vel volutpat, scelerisque bibendum tincidunt. ' +
                          'Vestibulum lectus consequat massa enim consequat eget nunc etiam' +
                          '.............................................................',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: AppColors.backgroundColor,
                      ),
                    ),
                  ),
                ],
                collapsedIconColor: AppColors.primary,
                iconColor: AppColors.elevatedButtonColor,
                collapsedBackgroundColor: AppColors.backgroundColor,
                backgroundColor: AppColors.hintStyle,
                collapsedTextColor: AppColors.primary,
                textColor: AppColors.backgroundColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
