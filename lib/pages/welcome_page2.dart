import 'package:arbeit/constants/routes.dart';
import 'package:arbeit/styles/app_colors.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.height;
    MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 465,
              color: Colors.blue[50],
              child: Image.asset('asset/images/Rectangle (2).png'),
            ),
            SizedBox(height: 40),
            Text(
              'Job recommendation',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w800,
                color: AppColors.primary2,
              ),
            ),
            Text(
              'with salary',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w800,
                color: AppColors.primary2,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Lorem ipsum dolor sit amet,' +
                    'consectetur adipiscing elit.' +
                    'Mauris, aliquam leo volutpat sed.' +
                    'Fermentum placerat sed quisque sit.' +
                    'Lorem ipsum dolor sit amet',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary,
                ),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 35,
                  width: 85,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed(loginPage);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.elevatedButtonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          color: AppColors.backgroundColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                ),
                SizedBox(width: 20),
                Container(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(registrationPage);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.backgroundColor,
                        side: BorderSide(color: AppColors.primary2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primary2,
                        ),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
