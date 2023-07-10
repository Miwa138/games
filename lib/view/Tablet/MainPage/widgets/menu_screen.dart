import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:games_design/view/Mobile/MainPage/friends_screen/friends_screen.dart';
import 'package:games_design/view/Mobile/MainPage/game_screen/game_screen.dart';
import 'package:games_design/view/Mobile/MainPage/home_screen/home_screen.dart';
import 'package:games_design/view/Mobile/MainPage/profile_screen/profile_screen.dart';
import 'package:games_design/view/Mobile/MainPage/widgets/menu.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

TextEditingController textTextEditingController = TextEditingController();
GlobalKey<FormState> formKey = GlobalKey<FormState>();

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          bottomNavigationBar: menu(),
          body:  const TabBarView(
            children: [
              HomeScreen(),
              GameScreen(),
              FriendsScreen(),
              ProfileScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
