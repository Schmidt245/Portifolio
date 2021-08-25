import 'package:flutter/material.dart';
import 'package:portifolio/responsive.dart';
import '../../../constants.dart';
import 'animated_counter.dart';

class SmallTextArea extends StatelessWidget {
  const SmallTextArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobile(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallText(
                      counter: AnimatedCounter(value: 100, text: "%"),
                      label: "In love for mobile development",
                    ),
                    SizedBox(width: defaultPadding * 2),
                    SmallText(
                      counter: AnimatedCounter(value: 100, text: "%"),
                      label: "Focused o learning",
                    ),
                    SizedBox(width: defaultPadding * 2),
                    SmallText(
                      counter: AnimatedCounter(value: 100, text: "%"),
                      label: "Available for hire :)",
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SmallText(
                  counter: AnimatedCounter(value: 100, text: "%"),
                  label: "In love for mobile development",
                ),
                SizedBox(width: defaultPadding * 2),
                SmallText(
                  counter: AnimatedCounter(value: 100, text: "%"),
                  label: "Focused o learning",
                ),
                SizedBox(width: defaultPadding * 2),
                SmallText(
                  counter: AnimatedCounter(value: 100, text: "%"),
                  label: "Available for hire :)",
                ),
              ],
            ),
    );
  }
}

class SmallText extends StatelessWidget {
  const SmallText({
    Key? key,
    required this.counter,
    this.label,
  }) : super(key: key);

  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(width: defaultPadding / 2),
        Text(label!, style: Theme.of(context).textTheme.subtitle2),
      ],
    );
  }
}
