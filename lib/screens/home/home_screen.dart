import 'package:flutter/material.dart';
import 'package:portifolio/constants.dart';
import 'package:portifolio/models/Project.dart';
import 'package:portifolio/models/Recomendations.dart';
import 'package:portifolio/screens/main_screen/main_screen.dart';

import 'components/home_banner.dart';
import 'components/my_projects.dart';
import 'components/my_recomendations.dart';
import 'components/small_text_area.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(childen: [
      HomeBanner(),
      SmallTextArea(),
      MyProjects(),
      Recomendations()
    ]);
  }
}


