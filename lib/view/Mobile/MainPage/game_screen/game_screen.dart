import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:games_design/view/Mobile/MainPage/game_screen/widgets/games_table.dart';
import 'package:games_design/view/Mobile/MainPage/game_screen/widgets/title_games.dart';
import 'package:games_design/view/Mobile/MainPage/profile_screen/widgets/button.dart';
import 'package:games_design/view/Mobile/MainPage/utils/FloatingButton.dart';
import 'package:games_design/view/Mobile/MainPage/utils/button/button_game/button_widget.dart';
import 'package:games_design/view/Mobile/MainPage/widgets/pagination.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            const ButtonGamesWidget(),
            const DualButtons(),
            TitleGamesWidget(),
            const GamesTableWidget(),
            const PaginationWidget(),
          ],
        ),
        floatingActionButton: FloatingButton(),
      ),
    );
  }
}
