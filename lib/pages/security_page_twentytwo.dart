import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecurityPage extends StatelessWidget {
  const SecurityPage({super.key});

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
                      'Security',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Face ID',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(height: 32),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Touch ID',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Save Password',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(height: 32),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Remember me',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
