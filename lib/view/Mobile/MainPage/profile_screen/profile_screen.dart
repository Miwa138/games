import 'package:flutter/material.dart';
import 'package:games_design/view/Mobile/MainPage/profile_screen/widgets/active_subcription.dart';
import 'package:games_design/view/Mobile/MainPage/profile_screen/widgets/button_rating.dart';
import 'package:games_design/view/Mobile/MainPage/profile_screen/widgets/game_statistics.dart';
import 'package:games_design/view/Mobile/MainPage/profile_screen/widgets/medium_widget.dart';
import 'package:games_design/view/Mobile/MainPage/profile_screen/widgets/profile_avatar.dart';
import 'package:games_design/view/Mobile/MainPage/profile_screen/widgets/statistics.dart';
import 'package:games_design/view/Mobile/MainPage/profile_screen/widgets/top_menu.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const <Widget>[
          TopMenuWidget(),
          ProfileAvatarTopWidget(),
          StatisticsWidget(),
          MediumWidget(),
          ActiveSubscriptionWidget(),
          ButtonRating(),
          GameStatisticsWidget(),
        ],
      ),
    );
  }
}
