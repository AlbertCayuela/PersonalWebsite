import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
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
