import 'package:flutter/material.dart';

import '../../utils/button/button_friends/rounded_button.dart';

class ActiveSubscriptionWidget extends StatelessWidget {
  const ActiveSubscriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xffbf5f5f5),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 3.9),
                        Container(
                          alignment: Alignment.center,
                          width: 170,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Активные подписки',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 130,
                decoration: const BoxDecoration(
                  color: Color(0xffbf5f5f5),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width:
                                  MediaQuery.of(context).size.width / 9),
                              Container(
                                alignment: Alignment.centerLeft,
                                width: 120,
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    '1 мес - DEMO',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold,),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width:
                                  MediaQuery.of(context).size.width / 6),
                              Container(
                                alignment: Alignment.centerLeft,
                                width: 100,
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'до 3/06:',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold,),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width:
                                  MediaQuery.of(context).size.width / 9),
                              Container(
                                alignment: Alignment.centerLeft,
                                width: 150,
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    '1 мес - Орг.(11\$)',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width:
                                  MediaQuery.of(context).size.width / 12),
                              Container(
                                alignment: Alignment.centerLeft,
                                width: 100,
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'до 3/11',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 320,
                            height: 40,
                            child: RoundedButton(
                              text: "Оформить подписку",
                              color: const Color(0xffbf3ae37),
                              press: () {},
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
