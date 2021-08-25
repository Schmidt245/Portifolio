import 'package:flutter/material.dart';
import 'package:portifolio/models/Recomendations.dart';

import '../../../constants.dart';

class RecomendationCard extends StatelessWidget {
  const RecomendationCard({
    Key? key, required  this.recomendations,
  }) : super(key: key);

  final Recomendation recomendations;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recomendations.name!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(recomendations.source!),
          const SizedBox(
            height: defaultPadding,
          ),
          Text(
            demo_recomendations[0].text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          )
        ],
      ),
    );
  }
}
