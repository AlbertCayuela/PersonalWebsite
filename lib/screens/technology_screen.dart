import 'package:flutter/material.dart';

class TechnologyScreen extends StatelessWidget {
  const TechnologyScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(25)),
        child: Column(
          children: [
            Row(),
            Text('Tecnologies'),
          ],
        ));
  }
}
