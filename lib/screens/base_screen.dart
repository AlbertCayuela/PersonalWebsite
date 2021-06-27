import 'dart:ui';

import 'package:albert_cayuela_web/screens/bar/web_app_bar.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WebAppBar(
            title: 'Albert Cayuela',
            onTitlePress: () {},
          ),
          Container(
            color: Colors.grey,
            margin: EdgeInsets.all(20),
            child: InkWell(
              onTap: () {},
              child: Text(
                'Albert Cayuela',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
