import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TipPage extends StatelessWidget {
  const TipPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(height: 39),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: SvgPicture.asset('asset/svg/ic_back.svg')),
                  SizedBox(width: 15),
                  Text(
                    'Daily Job Tips',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 35),
              Text(
                'How to build a strong online and PDF portfolio',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 183,
                width: double.infinity,
                child: Image.asset(
                  'asset/images/job_tips_2.png',
                  height: 183,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' +
                    'Mauris, aliquam leo volutpat sed. ' +
                    'Fermentum placerat sed quisque sit. ' +
                    'Senectus eget enim nunc, vel volutpat, scelerisque bibendum tincidunt. ' +
                    'Vestibulum lectus consequat massa enim consequat eget nunc etiam. ' +
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' +
                    'Mauris, aliquam leo volutpat sed. Fermentum placerat sed quisque sit.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Senectus eget enim nunc, vel volutpat, scelerisque bibendum tincidunt. ' +
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' +
                    'Mauris, aliquam leo volutpat sed. ' +
                    'Fermentum placerat sed quisque sit. ' +
                    'Senectus eget enim nunc, vel volutpat, scelerisque bibendum tincidunt.' +
                    'Vestibulum lectus consequat massa enim consequat eget nunc etiam.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
