import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../pages/const.dart';
import 'Project.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            style: TextStyle(
                color: bodyTextColor,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Image.asset(
            project.description!,
            fit: BoxFit.cover,
          ),
          Spacer(),
          TextButton(
            onPressed: () async {
              Uri url = Uri.parse(project.link!);

              await launchUrl(url);
            },
            child: Text(
              "Click Here >>",
              style:
                  TextStyle(color: bodyTextColor, fontStyle: FontStyle.italic),
            ),
          ),
        ],
      ),
    );
  }
}
