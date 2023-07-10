import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:games_design/view/Mobile/MainPage/utils/button/button_friends/rounded_button.dart';
import 'package:games_design/view/Mobile/MainPage/utils/custom_text_field.dart';

Future<void> ShowDialog(BuildContext context) async {
  TextEditingController textTextEditingController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: const Color(0xffb369b87),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        contentPadding: const EdgeInsets.only(top: 10.0),
        title: const Center(
            child: Text(
          'Соперник',
          style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
        )),
        content: SizedBox(
          height: 170,
          width: 300,
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
                            width: MediaQuery.of(context).size.width / 15),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 105,
                          child: const Text(
                            'Дата/Время',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width / 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width / 150),
                      Container(
                        width: 100,
                        decoration: const BoxDecoration(
                            color: Color(0xffb54aa99),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                              bottomLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                            )),
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Center(
                            child: Text(
                              '05/05 10:00',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
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
                            width: MediaQuery.of(context).size.width / 15),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 90,
                          child: const Text(
                            'Место',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width / 7),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 100,
                        decoration: const BoxDecoration(
                            color: Color(0xffb54aa99),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                              bottomLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                            )),
                        child: const Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Center(
                            child: Text(
                              'Империя',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),

                ],
              ),
              const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 1),
            child: Row(
              children: [
                InkWell(onTap: (){}, child: const Icon(CupertinoIcons.add_circled, color: Colors.white,),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: CustomTextField(
                      color: Colors.white,
                      textEditingController: textTextEditingController,
                      isObsecre: false,
                      enabled: true,
                    ),
                  ),
                ],
              ),),
          )
            ],
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 33,
                  child: RoundedButton(
                    text: "Ок",
                    color: const Color(0xffbf3ae37),
                    press: () {},
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    },
  );
}
