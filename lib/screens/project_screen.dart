import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 700;
    return Container(
      padding: EdgeInsets.all(isMobile ? 0 : 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white.withOpacity(0.05),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('My best projects',
              style: Theme.of(context).textTheme.headline1),
          SizedBox(height: 20),
          ProjectWidget(
            title: 'GamesValley',
            description:
                "For my final university project, I decided to learn Flutter from scratch and build a mobile application that helps video games industry professionals find a job within the industry.",
            url: 'https://github.com/AlbertCayuela/GamesValleyRepository',
          ),
          SizedBox(
            height: 20,
          ),
          ProjectWidget(
            title: '3D Game Project',
            description:
                "3D game made with our own game engine based on The Witcher Netflix series. I worked on this project for 5 months with 37 students.",
            url: 'https://github.com/OverPowered-Team/TheWitcher',
          ),
          SizedBox(
            height: 20,
          ),
          ProjectWidget(
            title: '3D Game Engine',
            description:
                "3D Game engine written in C++ using OpenGL and other libraries.",
            url: 'https://github.com/AlbertCayuela/NistalEngine',
          ),
          SizedBox(
            height: 20,
          ),
          ProjectWidget(
            title: '2D Game Project',
            description:
                "2D game based on Command and Conquer: Red Alert 2 made by 7 people during 5 months, written in C++.",
            url: 'https://github.com/hot-dog-games/Blue-Alert',
          ),
          SizedBox(
            height: 20,
          ),
          ProjectWidget(
            title: 'Artificial Intelligence Project',
            description:
                "Game made with Unity in which two agents have different behaviors that are controlled by behavior trees (using Behavior Bricks assets). Written in C#.",
            url: 'https://github.com/AlbertCayuela/IA-Tanks',
          ),
        ],
      ),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({
    Key? key,
    required this.title,
    required this.description,
    this.url,
  }) : super(key: key);

  final String title, description;
  final String? url;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(),
          Text(
            this.title,
            style: Theme.of(context).textTheme.headline2,
          ),
          SizedBox(height: 10),
          Text(
            this.description,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          SizedBox(height: 10),
          if (this.url != null)
            InkWell(
              child: Text(
                this.url.toString(),
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Colors.lightBlue),
              ),
              onTap: () async {
                if (await canLaunch(this.url.toString())) {
                  await launch(this.url.toString(),
                      forceSafariVC: true, forceWebView: true);
                } else {
                  print('could not launch $url');
                }
              },
            )
        ],
      ),
    );
  }
}
