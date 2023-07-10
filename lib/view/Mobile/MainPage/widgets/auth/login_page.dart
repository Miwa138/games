import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:games_design/view/Start/start_screen.dart';
import 'package:games_design/view/Mobile/MainPage/utils/button/button_friends/rounded_button.dart';
import 'package:games_design/view/Mobile/MainPage/utils/media_query_class.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _phoneNumber = '';
  String _verificationCode = '';
  bool _isLoading = false;
  final formKey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void setInfo() async {
    final User? user = _auth.currentUser;
    final _uid = user!.uid;
    FirebaseFirestore.instance.collection('users').doc(_uid).set({
      'id': _uid,
      'phone': _phoneNumber,
      'code': _verificationCode,
    });
  }


  Future<void> _verifyPhoneNumber(BuildContext context) async {
    final isValid = formKey.currentState!.validate();
    if (isValid) {
      try {
        setState(() {
          _isLoading = true;
        });
        await _auth.verifyPhoneNumber(
          phoneNumber: _phoneNumber,

          verificationCompleted: (PhoneAuthCredential credential) async {

            setState(() {
              _isLoading = false;
            });
            await _auth.signInWithCredential(credential);
          },
          verificationFailed: (FirebaseAuthException e) {
            Fluttertoast.showToast(
                msg: "Привышен лимит запросов",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 20.0
            );
            setState(() {
              _isLoading = false;
            });
            print("*****************************************************");

          },
          codeSent: (String verificationId, int? resendToken) {
            verificationId = verificationId;
            setState(() {
              _isLoading = false;
            });
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                title: const Text('Код проверки:'),
                content: TextField(
                  onChanged: (value) {
                    setState(() {
                      _verificationCode = value;
                    });
                  },
                ),
                actions: [
                  TextButton(
                    onPressed: () async {
                      setState(() {
                        Navigator.pop(context);
                        _isLoading = true;
                      });
                      PhoneAuthCredential credential =
                          PhoneAuthProvider.credential(
                              verificationId: verificationId,
                              smsCode: _verificationCode);
                      await _auth.signInWithCredential(credential);
                      setInfo();
                      setState(() {
                        _isLoading = true;
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const StartScreen()));
                        // setInfo();
                      });
                    },
                    child: const Text('Подтвердить'),
                  ),
                ],
              ),
            );
          },
          codeAutoRetrievalTimeout: (String verificationId) {},
        );
      } catch (error) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffb369b87),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(40.0),
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                  ),
                  height: 340,
                  child: ListView(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: 15),
                              child: Icon(
                                CupertinoIcons.game_controller,
                                color: Color(0xffb369b87),
                                size: 30,
                              ),
                            ),
                            Text(
                              "Playground",
                              style: TextStyle(
                                  color: Color(0xffb369b87),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Form(
                          key: formKey,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                ),
                              ),
                              child: TextFormField(
                                keyboardType: TextInputType.phone,
                                onChanged: (value) {
                                  setState(() {
                                    _phoneNumber = value;
                                  });
                                },
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(10.0),
                                  hintText: 'Телефон:',

                                  hintStyle: TextStyle(fontSize: 16,),
                                  focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xffb369b87)),
                                ),),
                                validator: (value) {
                                  if (value!.isEmpty || !value.contains('')) {
                                    return 'Введите номер телефона';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: SizedBox(
                    height: 50,
                    width: Helper.getScreenWidth(context) * 0.96,
                    child: RoundedButton(
                      text: 'Войти',
                      press: () {
                        _verifyPhoneNumber(context);
                      },
                      color: const Color(0xffb369b87),
                      fontSize: 18,
                    ),
                  ),
                ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
