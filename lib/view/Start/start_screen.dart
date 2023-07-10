import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:games_design/view/Start/main_mobile.dart';
import 'package:games_design/view/Start/main_tablet.dart';
import 'package:games_design/view/Start/responsive.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Responsive(
          mobile: Container(
           child: MainMobile(),
          ),
          tablet: Container(
            child: MainTablet(),
          ),
        ),
      ),
    );
  }
}
