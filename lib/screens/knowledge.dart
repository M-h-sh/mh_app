import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../pages/const.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Tools",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        KnowledgeText(text: "Android Studio,IntelliJ IDE ,Flutter, Dart"),
        KnowledgeText(text: "Unity3d, C# for Game Development"),
        KnowledgeText(text: "3dsMax for 3d Modelling"),
        KnowledgeText(text: "After Effects for video Editing"),
        KnowledgeText(text: "Adobe Photoshop"),
        KnowledgeText(text: "Adobe Illustrator"),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset(
            "lib/images/check.svg",
            color: primaryColor,
          ),
          SizedBox(width: defaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}
