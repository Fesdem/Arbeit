import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ArbeitPage extends StatelessWidget {
  const ArbeitPage({super.key});

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
                      'About Arbeit',
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
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' +
                      'Mauris, aliquam leo volutpat sed. ' +
                      'Fermentum placerat sed quisque sit. ' +
                      'Senectus eget enim nunc, vel volutpat, scelerisque bibendum tincidunt. ' +
                      'Vestibulum lectus consequat massa enim consequat eget nunc etiam. ' +
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' +
                      'Mauris, aliquam leo volutpat sed. ' +
                      'Fermentum placerat sed quisque sit.',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Senectus eget enim nunc, vel volutpat, ' +
                      'scelerisque bibendum tincidunt. Lorem ipsum dolor sit amet, ' +
                      'consectetur adipiscing elit. Mauris, aliquam leo volutpat sed. ' +
                      'Fermentum placerat sed quisque sit. Senectus eget enim nunc,' +
                      'vel volutpat, scelerisque bibendum tincidunt. ' +
                      'Vestibulum lectus consequat massa enim consequat eget nunc etiam.',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Fermentum placerat sed quisque sit. Senectus eget enim nunc, ' +
                      'vel volutpat, scelerisque bibendum tincidunt. ' +
                      'Vestibulum lectus consequat massa enim consequat eget nunc etiam. ' +
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' +
                      'Mauris, aliquam leo volutpat sed. Fermentum placerat sed quisque sit.',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Vestibulum lectus consequat massa enim consequat eget nunc etiam. '+
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' +
                  'Mauris, aliquam leo volutpat sed. Fermentum placerat sed quisque sit.',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
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