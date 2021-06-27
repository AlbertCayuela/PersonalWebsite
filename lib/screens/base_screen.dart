import 'dart:ui';

import 'package:albert_cayuela_web/screens/bar/web_app_bar.dart';
import 'package:flutter/material.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WebAppBar(
            title: 'Albert Cayuela',
            onTitlePress: () {},
          ),
        ],
      ),
    );
  }
}
