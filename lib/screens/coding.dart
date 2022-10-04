import 'package:flutter/material.dart';
import 'package:mh_app/screens/progress.dart';

import '../pages/const.dart';

class Coding extends StatelessWidget {
  const Coding({
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
          child: Text("Coding",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.58,
          label: "Python",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 1.0,
          label: "HTML",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: "CSS",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: "JavaScript",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 1.0,
          label: "PHP",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.6,
          label: "Java",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.5,
          label: "C++",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "C#",
        ),
      ],
    );
  }
}
