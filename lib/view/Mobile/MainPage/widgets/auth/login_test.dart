// import 'package:flutter/material.dart';
//
// class Login extends StatefulWidget {
//   @override
//   State<Login> createState() => _LoginState();
// }
//
// class _LoginState extends State<Login> with TickerProviderStateMixin {
//   late Animation<double> _animation;
//   late AnimationController _animationController;
//   final TextEditingController _emailTextController =
//   TextEditingController(text: '');
//   final TextEditingController _passTextController =
//   TextEditingController(text: '');
//   final _loginFormKey = GlobalKey<FormState>();
//   final FocusNode _passFocusNode = FocusNode();
//   bool _obscureText = true;
//
//
//   @override
//   void dispose() {
//     _animationController.dispose();
//     _emailTextController.dispose();
//     _passTextController.dispose();
//     _passFocusNode.dispose();
//     super.dispose();
//   }
//
//   @override
//   void initState() {
//     _animationController =
//         AnimationController(vsync: this, duration: const Duration(seconds: 30));
//     _animation =
//     CurvedAnimation(parent: _animationController, curve: Curves.linear)
//       ..addListener(() {
//         setState(() {});
//       })
//       ..addStatusListener((animationStatus) {
//         if (animationStatus == AnimationStatus.completed) {
//           _animationController.reset();
//           _animationController.forward();
//         }
//       });
//
//     _animationController.forward();
//
//     super.initState();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//
//           Container(
//             color: Colors.black54,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
//               child: ListView(
//                 children: [
//                   Form(
//                     key: _loginFormKey,
//                     child: Column(
//                       children: [
//                         TextFormField(
//                           textInputAction: TextInputAction.next,
//                           onEditingComplete: () => FocusScope.of(context)
//                               .requestFocus(_passFocusNode),
//                           keyboardType: TextInputType.emailAddress,
//                           controller: _emailTextController,
//                           validator: (value) {
//                             if (value!.isEmpty || !value.contains('@')) {
//                               return 'Введите адрес почты';
//                             } else {
//                               return null;
//                             }
//                           },
//                           style: const TextStyle(color: Colors.white),
//                           decoration: const InputDecoration(
//                             hintText: 'Email',
//                             hintStyle: TextStyle(color: Colors.white),
//                             enabledBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(color: Colors.white),
//                             ),
//                             focusedBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(color: Colors.white),
//                             ),
//                             errorBorder: UnderlineInputBorder(
//                               borderSide: BorderSide(color: Colors.red),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         TextFormField(
//                           textInputAction: TextInputAction.next,
//                           focusNode: _passFocusNode,
//                           keyboardType: TextInputType.visiblePassword,
//                           controller: _passTextController,
//                           obscureText: !_obscureText,
//                           validator: (value) {
//                             if (value!.isEmpty || value.length < 7) {
//                               return 'Введите пароль';
//                             } else {
//                               return null;
//                             }
//                           },
//                           style: const TextStyle(color: Colors.white),
//                           decoration: InputDecoration(
//                             suffixIcon: GestureDetector(
//                               onTap: () {
//                                 setState(() {
//                                   _obscureText = !_obscureText;
//                                 });
//                               },
//                               child: Icon(
//                                 _obscureText
//                                     ? Icons.visibility
//                                     : Icons.visibility_off,
//                                 color: Colors.white,
//                               ),
//                             ),
//                             hintText: 'Пароль',
//                             hintStyle: const TextStyle(color: Colors.white),
//                             enabledBorder: const UnderlineInputBorder(
//                               borderSide: BorderSide(color: Colors.white),
//                             ),
//                             focusedBorder: const UnderlineInputBorder(
//                               borderSide: BorderSide(color: Colors.white),
//                             ),
//                             errorBorder: const UnderlineInputBorder(
//                               borderSide: BorderSide(color: Colors.red),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 15,
//                         ),
//                         Align(
//                           alignment: Alignment.bottomRight,
//                           child: TextButton(
//                             onPressed: () {
//
//                             },
//                             child: const Text(
//                               'Регистрация',
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 17,
//                                   fontStyle: FontStyle.italic),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 10,
//                         ),
//                         MaterialButton(
//                           onPressed: () {
//
//                           },
//                           color: Colors.cyan,
//                           elevation: 8,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(13),
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(vertical: 14),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: const [
//                                 Text(
//                                   'Войти',
//                                   style: TextStyle(
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 20),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// validator: (value) {
// if (value!.isEmpty || !value.contains('')) {
// return 'Введите номер телефона';
// } else {
// return null;
// }
// },

//
// Form(
// key: formKey,
// child: TextFormField(
// decoration: const InputDecoration(
// contentPadding: EdgeInsets.all(10.0),
// hintText: 'Телефон:',
// hintStyle: TextStyle(fontSize: 18),
// ),
// keyboardType: TextInputType.number,
// inputFormatters: [
//
// ],
// ),
// ),