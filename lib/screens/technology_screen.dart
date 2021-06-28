import 'package:flutter/material.dart';

class TechnologyScreen extends StatelessWidget {
  const TechnologyScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 700;
    return Container(
        padding: EdgeInsets.all(50),
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
                    title: 'Coding',
                    skills: {
                      'C++': 'High',
                      'C': 'High',
                      'C#': 'High',
                      'Dart/Flutter': 'High',
                      'HTML': 'Medium',
                      'CSS': 'Low'
                    },
                  ),
                  Spacer(),
                  SkillWidget(
                    title: 'Software',
                    skills: {
                      'Visual Studio': 'High',
                      'VS Code': 'High',
                      'Unity': 'High',
                      'Photoshop': 'Medium/High',
                      'Sony Vegas': 'Medium',
                    },
                  ),
                  Spacer(),
                  SkillWidget(
                    title: 'Languages',
                    skills: {
                      'Spanish': 'Native',
                      'Catalan': 'Native',
                      'English': 'Advanced',
                      'French': 'Basic',
                    },
                  ),
                ],
              ),
            )
          ],
        ));
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
      flex: 2,
      child: Container(
        constraints: BoxConstraints.expand(),
        padding: EdgeInsets.all(20),
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
