import 'package:albert_cayuela_web/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(
            image: AssetImage('background.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.35), BlendMode.dstATop)),
      ),
      child: Column(
        children: [
          Text('Albert Cayuela',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlueAccent)),
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
                url: 'https://github.com/AlbertCayuela',
              ),
              SizedBox(
                width: 20,
              ),
              SocialMediaElement(
                  asset: 'linkedin.svg',
                  url: 'https://www.linkedin.com/in/albert-cayuela-naval/'),
              SizedBox(
                width: 20,
              ),
              SocialMediaElement(
                  asset: 'twitter.svg', url: 'https://twitter.com/CayuelaVG'),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 70),
            child: Text(
              'Hi my name is Albert Cayuela and I am a software developer. I studied Video Games Design and Development at Univeritat Politècnica de Catalunya (Spain).\nDuring my studies I really enjoyed coding and I always had the inner need of creating new projects, this is why I started learning Flutter.\nMy main priority is learning while enjoying and creating, and this is what I am trying to do every day, feel free to chek out my best projects below and contact me if you like them!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17),
            ),
          )
        ],
      ),
    );
  }
}

class SocialMediaElement extends StatelessWidget {
  const SocialMediaElement({
    Key? key,
    required this.asset,
    required this.url,
  }) : super(key: key);

  final String asset, url;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        if (await canLaunch(url)) {
          await launch(
            url,
            forceSafariVC: true,
            forceWebView: true,
          );
        } else {
          print('could not launch $url');
        }
      },
      icon: SvgPicture.asset(asset, color: Colors.lightBlueAccent),
    );
  }
}
