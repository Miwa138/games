import 'package:flutter/material.dart';
import 'package:games_design/view/Mobile/MainPage/utils/button/button_friends/rounded_button.dart';

class DualButtons extends StatelessWidget {
  const DualButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Positioned(
              left: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 200,
                    height: 40,
                    child: RoundedButton(
                      text: "Личные",
                      color: const Color(0xffbc58d2c),
                      press: () {},
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 200,
                  height: 40,
                  child: RoundedButton(
                    text: "Турнирные",
                    color: const Color(0xffbf3ae37),
                    press: () {},
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
