import 'package:flutter/material.dart';

class TechnologyScreen extends StatelessWidget {
  const TechnologyScreen({
    Key? key,
  }) : super(key: key);

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
            Text('Skills', style: Theme.of(context).textTheme.headline2),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Coding',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: Text('hola'),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                    child: Text('hola'),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
