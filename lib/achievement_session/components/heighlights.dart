import 'package:flutter/material.dart';
import 'package:mh_app/achievement_session/components/responsive.dart';

import '../../pages/const.dart';
import '../../screens/animation.dart';
import 'heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 20,
                        text: "+",
                      ),
                      label: "Certificates",
                    ),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 9,
                        text: "+",
                      ),
                      label: "Projects",
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 8,
                        text: "+",
                      ),
                      label: "Coding Languages",
                    ),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 13,
                        text: "+",
                      ),
                      label: "Stars",
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeighLight(
                  counter: AnimatedCounter(
                    value: 20,
                    text: "+",
                  ),
                  label: "Certificates",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 9,
                    text: "+",
                  ),
                  label: "Projects",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 8,
                    text: "+",
                  ),
                  label: "Coding Languages",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 13,
                    text: "+",
                  ),
                  label: "Stars",
                ),
              ],
            ),
    );
  }
}
