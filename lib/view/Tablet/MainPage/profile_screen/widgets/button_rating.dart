import 'package:flutter/material.dart';
import 'package:games_design/view/Mobile/MainPage/utils/button/button_friends/rounded_button.dart';

class ButtonRating extends StatelessWidget {
  const ButtonRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width /9),
                          Container(
                            width: 120,
                            height: 30,
                            child: RoundedButton(
                              text: "Граф. рейт.",
                              color: const Color(0xffbf3ae37),
                              press: () {},
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 20),
                         Container(
                            width: 120,
                            height: 30,
                            child: RoundedButton(
                              text: "Соседи рейт",
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
