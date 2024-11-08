import 'package:arbeit/constants/routes.dart';
import 'package:arbeit/styles/app_colors.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.height;
    MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 465,
              color: Colors.blue[50],
              child: Image.asset('asset/images/Rectangle (1).png'),
            ),
            SizedBox(height: 40),
            Text(
              'Monitor your',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.primary2,
                fontWeight: FontWeight.w800,
                fontSize: 30,
              ),
            ),
            Text(
              'job application',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.primary2,
                fontWeight: FontWeight.w800,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.' +
                    'Mauris, aliquam leo volutpat sed.' +
                    'Fermentum placerat sed quisque sit.' +
                    'Lorem ipsum dolor sit amet',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                  fontSize: 10,
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              height: 35,
              width: 75,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(welcomePage);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.elevatedButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(
                      color: AppColors.backgroundColor,
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
