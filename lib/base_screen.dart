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
  BaseScreen({Key? key}) : super(key: key);

  ScrollController? _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _scrollController?.jumpTo(0);
        },
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
              controller: _scrollController,
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
                    title: 'Work experience',
                    workExperiences: [
                      '- Website developer internship at Trenes.com (February 2021 - July 2021)',
                      '- Logistics operator at Decathlon (March 2019 - August 2019)',
                      '- Robotics teacher at Kubic Academy (2016 - 2017)',
                    ],
                  ),
                  SizedBox(height: 20),
                  WorkScreen(
                    title: 'Studies',
                    workExperiences: [
                      '- Video Games Design and Development degree at Univeristat Politècnica de Catalunya (2016 - 2021)',
                      '- HighSchool at IES Castellbisbal (2014 - 2016)'
                    ],
                  ),
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
