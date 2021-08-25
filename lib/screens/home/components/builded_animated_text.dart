import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portifolio/responsive.dart';

import '../../../constants.dart';

class BuildedAnimatedText extends StatelessWidget {
  const BuildedAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
        style: Theme.of(context).textTheme.subtitle1!,
        maxLines: 1,
        child: Row(
          children: [
            if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
            if (!Responsive.isMobileLarge(context))
              SizedBox(width: defaultPadding / 2),
            Text("I'm a"),
            Responsive.isMobile(context)
                ? Expanded(
                    child: AnimatedText(),
                  )
                : AnimatedText(),
            if (!Responsive.isMobileLarge(context))
              SizedBox(width: defaultPadding / 2),
            if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
          ],
        ));
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(" Flutter Dev",
            speed: Duration(milliseconds: 60)),
        TyperAnimatedText(" Java Dev", speed: Duration(milliseconds: 60)),
        TyperAnimatedText(" Web Dev", speed: Duration(milliseconds: 60)),
        TyperAnimatedText("lso a guy who likes playing RPG", speed: Duration(milliseconds: 60)),
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(text: "<", children: [
      TextSpan(text: "flutter", style: TextStyle(color: primaryColor)),
      TextSpan(text: ">"),
    ]));
  }
}
