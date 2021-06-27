import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white10,
      ),
      child: Column(
        children: [
          Text('Albert Cayuela',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20,
          ),
          Text(
            "Hi I'm Albert, I love coding and creating new projects",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            backgroundImage: AssetImage('profile.jpg'),
            radius: 120,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialMediaElement(
                asset: 'github.svg',
                onPress: () {},
              ),
              SizedBox(
                width: 20,
              ),
              SocialMediaElement(
                asset: 'github.svg',
                onPress: () {},
              ),
              SizedBox(
                width: 20,
              ),
              SocialMediaElement(
                asset: 'github.svg',
                onPress: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SocialMediaElement extends StatelessWidget {
  const SocialMediaElement({
    Key? key,
    required this.asset,
    required this.onPress,
  }) : super(key: key);

  final String asset;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: SvgPicture.asset(
        asset,
        color: Colors.white,
      ),
    );
  }
}
