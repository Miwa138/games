import 'package:flutter/material.dart';

class GamesOrganizers_Tournament extends StatefulWidget {
  const GamesOrganizers_Tournament({Key? key}) : super(key: key);

  @override
  State<GamesOrganizers_Tournament> createState() =>
      _GamesOrganizers_TournamentState();
}

class _GamesOrganizers_TournamentState
    extends State<GamesOrganizers_Tournament> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Игры организатор турнирные"),
      ),
      body: ListView(
        children: <Widget>[
          // const SearchScreen(),
          const SizedBox(

              // child: ScrollScreen(),
              ),
          Container(
            child: const Column(
              children: [
                // PlayerScreen(),
                // CircleButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
