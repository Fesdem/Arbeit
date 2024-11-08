import 'package:arbeit/pages/arbeit_info_twentysix.dart';
import 'package:arbeit/pages/faq_page_twentysix.dart';
import 'package:arbeit/pages/policy_page_twentyfive.dart';
import 'package:arbeit/pages/terms_page_twentyfour.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                      'Help',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'About Job Finder',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => ArbeitPage())));
                      },
                      icon: SvgPicture.asset('asset/svg/ic_front.svg')),
                ],
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'FAQ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => FaqPage()));
                      },
                      icon: SvgPicture.asset('asset/svg/ic_front.svg')),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Terms and Conditions',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TermsPage()));
                      },
                      icon: SvgPicture.asset('asset/svg/ic_front.svg')),
                ],
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Privacy Policy',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PolicyPage()));
                      },
                      icon: SvgPicture.asset('asset/svg/ic_front.svg')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
