import 'package:arbeit/pages/application_page_two.dart';
import 'package:arbeit/pages/home_page_two.dart';
import 'package:arbeit/pages/profile_page_seventeen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SecondMainPage extends StatefulWidget {
  const SecondMainPage({super.key});

  @override
  State<SecondMainPage> createState() => _SecondMainPageState();
}

class _SecondMainPageState extends State<SecondMainPage> {
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
    SecondHomePage(),
    SecondApplicationPage(),
    Center(child: Text('Messages')),
    ProfilePage(),
  ];
}
