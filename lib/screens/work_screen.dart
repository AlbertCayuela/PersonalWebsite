import 'dart:html';

import 'package:flutter/material.dart';

class WorkScreen extends StatelessWidget {
  WorkScreen({Key? key, required this.workExperiences, required this.title})
      : super(key: key);

  List workExperiences = [];
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(),
          Text(
            this.title,
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(height: 10),
          for (int i = 0; i < workExperiences.length; i++)
            WorkExperienceWidget(experience: workExperiences[i]),
        ],
      ),
    );
  }
}

class WorkExperienceWidget extends StatelessWidget {
  const WorkExperienceWidget({
    Key? key,
    required this.experience,
  }) : super(key: key);

  final String experience;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          experience,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
