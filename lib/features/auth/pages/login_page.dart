import 'package:arbeit/constants/routes.dart';
import 'package:arbeit/pages/policy_page_twentyfive.dart';
import 'package:arbeit/pages/terms_page_twentyfour.dart';
import 'package:arbeit/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.height;
    MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(23),
        child: Column(
          children: [
            SizedBox(height: 40),
            Center(
              child: SvgPicture.asset('asset/svg/logo.svg'),
            ),
            SizedBox(height: 10),
            Text(
              'Log In to continue',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.primary,
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(327, 48),
                  backgroundColor: AppColors.backgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'asset/svg/google_logo.svg',
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Continue with Google',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(327, 48),
                  backgroundColor: AppColors.backgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'asset/svg/facebook_logo.svg',
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Continue with Facebook',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(emailPage);
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(327, 48),
                  backgroundColor: AppColors.primary2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  )),
              child: Text(
                'Log In with E-mail',
                style: TextStyle(
                  color: AppColors.backgroundColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: AppColors.secondary,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(registrationPage);
                    },
                    child: Text(
                      'Register Here',
                      style: TextStyle(
                        color: AppColors.elevatedButtonColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
              ],
            ),
            SizedBox(height: 40),
            Center(
              child: Text(
                "By creating an account, you accept Job finder’s",
                style: TextStyle(
                  color: AppColors.secondary,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => TermsPage()));
                    },
                    child: Text(
                      'Terms of Service',
                      style: TextStyle(
                        color: AppColors.elevatedButtonColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                SizedBox(width: 3),
                Text(
                  'and',
                  style: TextStyle(
                    color: AppColors.secondary,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: 3),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PolicyPage()));
                    },
                    child: Text(
                      'Privacy Policy',
                      style: TextStyle(
                        color: AppColors.elevatedButtonColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
