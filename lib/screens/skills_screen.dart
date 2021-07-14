import 'package:flutter/material.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 700;
    return Container(
        padding: EdgeInsets.all(isMobile ? 0 : 50),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Skills', style: Theme.of(context).textTheme.headline1),
            SizedBox(height: 20),
            IntrinsicHeight(
              child: Flex(
                direction: isMobile ? Axis.vertical : Axis.horizontal,
                children: [
                  SkillWidget(
                    title: 'Technical Skills',
                    skills: {
                      '- C++': 'High',
                      '- C': 'High',
                      '- C#': 'High',
                      '- Dart/Flutter': 'High',
                      '- Firebase': 'Advanced',
                      '- HTML': 'Intermediate',
                      '- 3D modelling': 'Intermediate',
                      '- 3D animation': 'Intermediate',
                      '- CSS': 'Beginner',
                      '- PHP': 'Beginner',
                      '- SQL': 'Beginner',
                    },
                  ),
                  SkillWidget(
                    title: 'Software',
                    skills: {
                      '- Visual Studio': 'Advanced',
                      '- VS Code': 'Advanced',
                      '- Unity': 'Advanced',
                      '- GitHub': 'Advanced',
                      '- Google Drive Services': 'Advanced',
                      '- Office': 'Advanced',
                      '- WordPress': 'Advanced',
                      '- Photoshop': 'Intermediate/Advanced',
                      '- Sony Vegas': 'Intermediate',
                      '- 3ds Max': 'Intermediate',
                      '- Adobe Premiere': 'Beginner',
                    },
                  ),
                  SoftSkillsWidget(
                    softSkills: [
                      '- Curious',
                      '- Responsible',
                      '- Team worker',
                      '- Willing to learn',
                      '- Detail oriented',
                      '- Patient'
                    ],
                  ),
                  SkillWidget(
                    title: 'Languages',
                    skills: {
                      '- Spanish': 'Native',
                      '- Catalan': 'Native',
                      '- English': 'Professional (B2 Certified)',
                      '- French': 'Elementary',
                    },
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class SoftSkillsWidget extends StatelessWidget {
  SoftSkillsWidget({
    Key? key,
    required this.softSkills,
  }) : super(key: key);

  List softSkills = [];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        constraints: BoxConstraints.expand(),
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(right: 15, top: 15),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Soft skills',
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(height: 10),
            for (int i = 0; i < softSkills.length; i++)
              Container(
                child: Column(
                  children: [
                    Text(
                      softSkills[i],
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    SizedBox(height: 5),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}

class SkillWidget extends StatelessWidget {
  const SkillWidget({
    Key? key,
    required this.title,
    required this.skills,
  }) : super(key: key);

  final String title;

  final Map skills;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        constraints: BoxConstraints.expand(),
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(right: 15, top: 15),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(height: 10),
            for (int i = 0; i < skills.values.toList().length; i++)
              Container(
                child: Column(
                  children: [
                    Text(
                      skills.entries.elementAt(i).key +
                          ' - ' +
                          skills.entries.elementAt(i).value,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
