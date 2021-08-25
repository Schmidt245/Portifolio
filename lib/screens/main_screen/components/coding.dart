import 'package:flutter/material.dart';
import 'package:portifolio/components/animated_progress_indicator.dart';

import '../../../constants.dart';


class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Divider(),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding),
        child: Text(
          "Coding",
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ),
      AnimatedLinearProgressIndicator(percentage: 0.70, label: "Dart"),
      AnimatedLinearProgressIndicator(percentage: 0.75, label: "Java"),
      AnimatedLinearProgressIndicator(percentage: 0.60, label: "C#"),
      AnimatedLinearProgressIndicator(percentage: 0.40, label: "JavaScript"),
      AnimatedLinearProgressIndicator(percentage: 0.54, label: "HTML"),
      AnimatedLinearProgressIndicator(percentage: 0.47, label: "CSS"),
      AnimatedLinearProgressIndicator(percentage: 0.79, label: "XML"),
    ]);
  }
}
