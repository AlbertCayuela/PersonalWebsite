import 'dart:ui';

import 'package:albert_cayuela_web/screens/bar/web_app_bar.dart';
import 'package:albert_cayuela_web/screens/intro_screen.dart';
import 'package:albert_cayuela_web/screens/project_screen.dart';
import 'package:albert_cayuela_web/screens/skills_screen.dart';
import 'package:albert_cayuela_web/screens/work_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'globals.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.arrow_upward_rounded,
          color: Colors.white,
        ),
        backgroundColor: Colors.white10,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Container(
            width: maxWidth,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(),
                  WebAppBar(
                    title: 'Albert Cayuela',
                    onTitlePress: () {},
                  ),
                  SizedBox(height: 20),
                  IntroScreen(),
                  SizedBox(height: 20),
                  SkillsScreen(),
                  SizedBox(height: 20),
                  WorkScreen(
                    workExperiences: [
                      '- Website developer internship at Trenes.com (February 2021 - July 2021)',
                      '- Logistics operator at Decathlon (March 2019 - August 2019)',
                      '- Robotics teacher at Kubic Academy (2016 - 2017)',
                    ],
                  ),
                  SizedBox(height: 20),
                  SizedBox(height: 20),
                  ProjectScreen(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
