import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget menu() {
  return Container(
    color: Color(0xffb369b87),
    child: const TabBar(
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white70,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorPadding: EdgeInsets.all(5.0),
      indicatorColor: Colors.green,
      tabs: [
        Tab(
          icon: Icon(Icons.home_filled,),
          text: ("Главная"),
        ),
        Tab(
          icon: Icon(CupertinoIcons.game_controller_solid,),
          text: ("Игры"),
        ),
        Tab(
          icon: Icon(CupertinoIcons.person_2,),
          text: ("Друзья"),
        ),
        Tab(
          icon: Icon(CupertinoIcons.person_circle,),
          text: ("Профиль"),
        ),

      ],
    ),
  );
}

