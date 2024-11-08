import 'package:arbeit/constants/routes.dart';
import 'package:arbeit/pages/application_page_sixteen.dart';
import 'package:arbeit/pages/congrats_page_ten.dart';
import 'package:arbeit/pages/email_page5.dart';
import 'package:arbeit/pages/experience_page_eight.dart';
import 'package:arbeit/pages/forgot_page_twelve.dart';
import 'package:arbeit/pages/forgot_password_page_eleven.dart';
import 'package:arbeit/pages/home_page.dart';
import 'package:arbeit/pages/first_page1.dart';
import 'package:arbeit/pages/login_page4.dart';
import 'package:arbeit/pages/main_page_fourteen.dart';
import 'package:arbeit/pages/main_page_two.dart';
import 'package:arbeit/pages/password_reset_thirteen.dart';
import 'package:arbeit/pages/profile_page6.dart';
import 'package:arbeit/pages/profile_page7.dart';
import 'package:arbeit/pages/profile_page_seventeen.dart';
import 'package:arbeit/pages/profile_view_eighteen.dart';
import 'package:arbeit/pages/registration_page3.dart';
import 'package:arbeit/pages/skills_page_nine.dart';
import 'package:arbeit/pages/tip_page_fifteen.dart';
import 'package:arbeit/pages/user_information_page_twentyseven.dart';
import 'package:arbeit/pages/welcome_page2.dart';
import 'package:arbeit/styles/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Arbeit Application',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backgroundColor,
        useMaterial3: true,
      ),
      initialRoute: firstPage,
      routes: {
        firstPage: (context) => FirstPage(),
        welcomePage: (context) => WelcomePage(),
        registrationPage: (context) => RegistrationPage(),
        loginPage: (context) => LoginPage(),
        homePage: (context) => HomePage(),
        emailPage: (context) => EmailPage(),
        completionPage: (context) => CompletionPage(),
        educationPage: (context) => EducationPage(),
        experiencePage: (context) => ExperiencePage(),
        skillsPage: (context) => SkillsPage(),
        congratsPage: (context) => CongratsPage(),
        forgetPage: (context) => ForgetPage(),
        recoverPage: (context) => RecoverPage(),
        resetPassword: (context) => ResetPassword(),
        mainPage: (context) => MainPage(),
        tipPage: (context) => TipPage(),
        applicationPage: (context) => ApplicationPage(),
        profilePage: (context) => ProfilePage(),
        profileView: (context) => ProfileView(),
        userInfo: (context) => UserInfo(),
        secondMainPage: (context) => SecondMainPage(),
      },
    );
  }
}
