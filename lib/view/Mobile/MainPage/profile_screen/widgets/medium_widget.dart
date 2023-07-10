import 'package:flutter/material.dart';
import 'package:games_design/view/Mobile/MainPage/utils/button/button_friends/rounded_button.dart';

class MediumWidget extends StatelessWidget {
  const MediumWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xffb369b87),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Container(
                    height: 38,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: MediaQuery.of(context).size.width / 40),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: 70,
                            child: const Text(
                              'Статус:',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14, fontFamily: "Montserrat", fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 250),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: 120,
                            child: const Text(
                              'Организатор',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 160),
                          SizedBox(
                            width: 130,
                            height: 30,
                            child: RoundedButton(
                              text: "Анонс турнира",
                              color: const Color(0xffbf3ae37),
                              press: () {},
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
