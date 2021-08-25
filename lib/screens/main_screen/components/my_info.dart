import 'package:flutter/material.dart';

import '../../../constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1.23,
        child: Container(
          color: secondaryColor,
          child: Column(
            children: [
              Spacer(flex: 2),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("images/profile_pic.jpg"),
              ),
              Spacer(flex: 2),
              Text(
                "Lucas Schmidt",
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                "Mobile Dev",
                textAlign: TextAlign.center,
                //style: Theme.of(context).textTheme.subtitle2,
                style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
              ),
              Spacer(flex: 2),
            ],
          ),
        ));
  }
}
