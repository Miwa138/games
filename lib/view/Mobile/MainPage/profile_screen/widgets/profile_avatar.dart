import 'package:flutter/material.dart';
import 'package:games_design/view/Mobile/MainPage/profile_screen/widgets/circle_avatar_profile.dart';

class ProfileAvatarTopWidget extends StatelessWidget {
  const ProfileAvatarTopWidget({super.key});

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
          ),
        ),
        child: Center(
          child: Stack(
            children: <Widget>[
              Container(
                child: Container(
                    width: MediaQuery.of(context).size.width / 1,
                    height: 121,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 2.95),
                                Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 150,
                                    child: const Text(
                                      'Иван Иванов',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        fontFamily: "Montserrat",
                                        fontSize: 15
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    width: MediaQuery.of(context).size.width /
                                        3.09),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 0.0),
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 200,
                                    child: const Text(
                                      'SportID: 77674563543',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              Positioned(
                top: 60,
                child: Container(
                  width: MediaQuery.of(context).size.width / 1,
                  height: 65,
                  color: Color(0xffb54aa99),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xffb54aa99),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: MediaQuery.of(context).size.width / 2.52),
                                Container(
                                  alignment: Alignment.center,
                                  width: 60,
                                  child: const Text(
                                    'Рейтинг',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14),
                                  ),
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width / 55),
                                Container(
                                  alignment: Alignment.center,
                                  width: 60,
                                  child: const Text(
                                    'Игры',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14),
                                  ),
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width / 185),
                                Container(
                                  alignment: Alignment.center,
                                  width: 60,
                                  child: const Text(
                                    'Всего',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: MediaQuery.of(context).size.width / 2.38),
                              Container(
                                alignment: Alignment.center,
                                width: 60,
                                child: const Text(
                                  '1100',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(width: MediaQuery.of(context).size.width / 155),
                              Container(
                                alignment: Alignment.center,
                                width: 70,
                                child: const Text(
                                  '+10-3=3',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14, fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(width: MediaQuery.of(context).size.width / 80),
                              Container(
                                alignment: Alignment.center,
                                width: 40,
                                child: const Text(
                                  '16',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14, fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
               const Positioned(
                top: 7,
                left: 20,
                child: CircleAvatarProfile(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
