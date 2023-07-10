import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleGamesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10.0),
      child: Container(
        height: 38,
        decoration: const BoxDecoration(
            color: Color(0xffb369b87),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0))),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: MediaQuery.of(context).size.width / 27),
              Container(
                alignment: Alignment.centerLeft,
                width: 85,
                child: const Text('Дата/Время', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 18,
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: 75,
                child: const Text(
                  'Соперник', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 13,
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: 38,
                child: const Text(
                  'Счет', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 9,
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: 10,
                child: const Icon(
                  CupertinoIcons.arrowtriangle_up, color: Colors.white, size: 15,),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
