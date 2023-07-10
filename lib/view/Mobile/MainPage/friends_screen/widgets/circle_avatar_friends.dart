import 'package:flutter/material.dart';

class CircleAvatarFriends extends StatelessWidget {
  const CircleAvatarFriends({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 20.0,
            child: ClipOval(
              child: Image.network(
                'https://it.reg-nko.ru/wp-content/uploads/2022/12/7-kopiya.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20,),
            child: Icon(
              Icons.star_border_outlined,
              size: 12,
              color: Color(0xffb369b87),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 22),
            child: Text(
              "4.9",
              style: TextStyle(fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }
}
