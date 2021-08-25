import 'package:flutter/material.dart';
import 'package:portifolio/components/animated_progress_indicator.dart';

import '../../../constants.dart';

class Skills extends StatelessWidget {
  const Skills({
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
            "Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(
                child: AnimatedCircularProgressIndicator(
              percentage: 0.83,
              label: "Flutter",
            )),
            SizedBox(width: defaultPadding),
            Expanded(
                child: AnimatedCircularProgressIndicator(
              percentage: 0.55,
              label: "Firebase",
            )),
            SizedBox(width: defaultPadding),
            Expanded(
                child: AnimatedCircularProgressIndicator(
              percentage: 0.43,
              label: "Node.js",
            )),
          ],
        )
      ],
    );
  }
}
