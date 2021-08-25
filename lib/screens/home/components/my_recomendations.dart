import 'package:flutter/material.dart';
import 'package:portifolio/models/Recomendations.dart';
import 'package:portifolio/screens/home/components/recomendation_card.dart';

import '../../../constants.dart';

class Recomendations extends StatelessWidget {
  const Recomendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Recomendations", style: Theme.of(context).textTheme.headline6),
          const SizedBox(
            height: defaultPadding,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: List.generate(
                  demo_recomendations.length,
                      (index) => Padding(
                    padding: const EdgeInsets.only(right: defaultPadding),
                    child: RecomendationCard(recomendations: demo_recomendations[index],),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
