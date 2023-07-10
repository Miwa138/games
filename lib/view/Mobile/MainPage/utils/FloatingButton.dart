import 'package:flutter/material.dart';
import 'package:games_design/view/Mobile/MainPage/utils/show_dialog.dart';

class FloatingButton extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xffbf3ae37),
      onPressed: () {
        ShowDialog(context);
      },
      child: const Icon(Icons.add),
    );
  }
}
