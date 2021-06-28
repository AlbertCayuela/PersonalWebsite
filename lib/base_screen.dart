import 'dart:ui';

import 'package:albert_cayuela_web/screens/bar/web_app_bar.dart';
import 'package:albert_cayuela_web/screens/intro_screen.dart';
import 'package:albert_cayuela_web/screens/technology_screen.dart';
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
                  TechnologyScreen(),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white.withOpacity(0.05),
                    ),
                    child: Row(
                      children: [
                        Text('My best projects',
                            style: Theme.of(context).textTheme.headline1),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
