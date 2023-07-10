import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameStatisticsWidget extends StatelessWidget {
  const GameStatisticsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xffb54aa99),
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
                            width: MediaQuery.of(context).size.width / 3.5),
                        Container(
                          alignment: Alignment.center,
                          width: 150,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Игры',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xffbf5f5f5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 20),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: 40,
                            child: const Text(
                              'Дата',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 28,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: 65,
                            child: const Text(
                              'Соперник',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 13,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: 33,
                            child: const Text(
                              'Счет',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 12,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: 5,
                            child: const Icon(
                              CupertinoIcons.arrowtriangle_up,
                              size: 15,

                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 9,
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: 35,
                            child: const Text(
                              'Счет',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.blue),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  height: 150,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Container(
                        color: Color(0xffbf5f5f5),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width / 13),
                              Container(
                                alignment: Alignment.centerLeft,
                                width: 40,
                                child: const Text('25:04'),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 17,
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                width: 50,
                                child: const Text(
                                  'Иванов',
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 9,
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                width: 20,
                                child: const Text(
                                  '3:2',
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 11,
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                width: 20,
                                child: const Text(
                                  '12',
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 15,
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                width: 50,
                                child: const Text(
                                  '',
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: 6,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
