import 'package:arbeit/features/employer_forum/application/application_page.dart';
import 'package:arbeit/features/employer_forum/home/employer_home_page.dart';
import 'package:arbeit/features/profile/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmployerMainPage extends StatefulWidget {
  const EmployerMainPage({super.key});

  @override
  State<EmployerMainPage> createState() => _EmployerMainPageState();
}

class _EmployerMainPageState extends State<EmployerMainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_home,
                color: Colors.blue[200],
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('asset/svg/ic_applications.svg'),
              label: 'Applications'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('asset/svg/ic_messages.svg'),
              label: 'Messages'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('asset/svg/ic_profile.svg'),
              label: 'Profile'),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
    );
  }

  final pages = [
    EmployerHomePage(),
    ApplicationPage(),
    Center(child: Text('Messages')),
    ProfilePage(),
  ];
}
