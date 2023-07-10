import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GamesTableWidget extends StatefulWidget {
  const GamesTableWidget({super.key});

  @override
  State<GamesTableWidget> createState() => _GamesTableWidgetState();
}

class _GamesTableWidgetState extends State<GamesTableWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.blue),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        height: 380,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              color: Color(0xffbf5f5f5),
              child: Padding(
                padding: const EdgeInsets.only(left: 0, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width / 14),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 85,
                      child: const Text('25:04 10:00'),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 15,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 75,
                      child: const Text(
                        'Иванов',
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 13,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 20,
                      child: const Text(
                        '3:2',
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 7.5,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 20,
                      child: const Text(
                        '12',
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: 20,
        ),
      ),
    );
  }
}
