import 'package:flutter/material.dart';

class GamesOrganizers_Personal extends StatefulWidget {
  const GamesOrganizers_Personal({Key? key}) : super(key: key);

  @override
  State<GamesOrganizers_Personal> createState() =>
      _GamesOrganizers_PersonalState();
}

class _GamesOrganizers_PersonalState extends State<GamesOrganizers_Personal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Игры организатор личные"),
      ),
      body: ListView(
        children: const <Widget>[
          // const SearchScreen(),
          SizedBox(

              // child: ScrollScreen(),
              ),
          Column(
            children: [
              // PlayerScreen(),
              // CircleButton(),
            ],
          ),
        ],
      ),
    );
  }
}
