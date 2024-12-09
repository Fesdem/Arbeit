import 'package:arbeit/common/animations/splash_page.dart';
import 'package:arbeit/common/animations/welcome_splash_page.dart';
import 'package:arbeit/routes.dart';
import 'package:arbeit/features/employee_forum/application/pages/application_page.dart';
import 'package:arbeit/features/auth/pages/reg_done_page.dart';
import 'package:arbeit/features/auth/pages/email_login_page.dart';
import 'package:arbeit/features/auth/pages/profile_info.dart/experience_page.dart';
import 'package:arbeit/features/auth/pages/recover_password_page.dart';
import 'package:arbeit/features/auth/pages/forgot_password_page.dart';
import 'package:arbeit/features/employee_forum/home/pages/home_page.dart';
import 'package:arbeit/features/auth/pages/login_page.dart';
import 'package:arbeit/features/employee_forum/main_page.dart';
import 'package:arbeit/features/employer_forum/employer_main_page.dart';
import 'package:arbeit/features/auth/pages/reset_password_page.dart';
import 'package:arbeit/features/auth/pages/profile_info.dart/personal_info_page.dart';
import 'package:arbeit/features/auth/pages/profile_info.dart/education_info_page.dart';
import 'package:arbeit/features/profile/pages/profile_page.dart';
import 'package:arbeit/features/profile/pages/view_profile_page.dart';
import 'package:arbeit/features/auth/pages/registration_page.dart';
import 'package:arbeit/features/auth/pages/profile_info.dart/skills_page.dart';
import 'package:arbeit/features/employee_forum/home/pages/tip_page.dart';
import 'package:arbeit/features/auth/pages/profile_info.dart/user_status.dart';
import 'package:arbeit/common/constants/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Arbeit Application',
            theme: ThemeData(
              scaffoldBackgroundColor: AppColors.backgroundColor,
              useMaterial3: true,
            ),
            initialRoute: firstPage,
            routes: {
              firstPage: (context) => SplashPage(),
              welcomePage: (context) => WelcomeSplashPage(),
              registrationPage: (context) => RegistrationPage(),
              loginPage: (context) => LoginPage(),
              homePage: (context) => HomePage(),
              emailPage: (context) => EmailLoginPage(),
              completionPage: (context) => PersonalInfoPage(),
              educationPage: (context) => EducationInfoPage(),
              experiencePage: (context) => ExperiencePage(),
              skillsPage: (context) => SkillsPage(),
              congratsPage: (context) => CongratsPage(),
              forgetPage: (context) => ForgetPasswordPage(),
              recoverPage: (context) => RecoverPasswordPage(),
              resetPassword: (context) => ResetPasswordPage(),
              mainPage: (context) => MainPage(),
              tipPage: (context) => TipPage(),
              applicationPage: (context) => ApplicationPage(),
              profilePage: (context) => ProfilePage(),
              profileView: (context) => ViewProfilePage(),
              userInfo: (context) => UserStatus(),
              secondMainPage: (context) => EmployerMainPage(),
            },
          );
        });
  }
}
