import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({
    Key? key,
    required this.title,
    required this.onTitlePress,
  }) : super(key: key);

  final String title;
  final Function onTitlePress;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white10,
      ),
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          WebAppBarElement(
            title: 'CV',
            onPress: () {},
          ),
          SizedBox(width: 20),
          WebAppBarElement(
            title: 'Projects',
            onPress: () {},
          ),
          SizedBox(width: 20),
          WebAppBarElement(
            title: 'Socials',
            onPress: () {},
          ),
        ],
      ),
    );
  }
}

class WebAppBarElement extends StatelessWidget {
  const WebAppBarElement({
    Key? key,
    required this.title,
    required this.onPress,
  }) : super(key: key);

  final String title;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(child: Text(title));
  }
}
