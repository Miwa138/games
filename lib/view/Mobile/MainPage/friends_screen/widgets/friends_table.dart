import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:games_design/view/Mobile/MainPage/friends_screen/widgets/circle_avatar_friends.dart';


class FriendsTableWidget extends StatefulWidget {
  const FriendsTableWidget({super.key});

  @override
  State<FriendsTableWidget> createState() => _FriendsTableWidgetState();
}

class _FriendsTableWidgetState extends State<FriendsTableWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: const BoxDecoration(
        ),
        height: 420,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              height: 42,
              color: const Color(0xffbf5f5f5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width / 30),
                  Container(
                    height: 34,
                    alignment: Alignment.center,
                    width: 80,
                    child: const CircleAvatarFriends(),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 18,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: 70,
                    child: const Text(
                      'Иванов',
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 15,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: 45,
                    child: const Text(
                      '1132',
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 14,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: 60,
                    child: const Text(
                      '+20-5=4',
                    ),
                  ),
                ],
              ),
            );
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
