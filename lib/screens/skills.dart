import 'package:flutter/material.dart';
import 'package:mh_app/screens/progress.dart';

import '../pages/const.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text("Skills",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.7,
                label: "App Dev",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.82,
                label: "Web Dev",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.65,
                label: "Design",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
