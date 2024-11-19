import 'package:arbeit/features/employee_forum/application/pages/application_page.dart';
import 'package:arbeit/features/employee_forum/home/pages/home_page.dart';
import 'package:arbeit/features/profile/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
    HomePage(),
    ApplicationPage(),
    Center(child: Text('Messages')),
    ProfilePage(),
  ];
}
