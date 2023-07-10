import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  TextEditingController? textEditingController;
  IconData? iconData;
  String? hintText;
  bool? isObsecre = true;
  bool? enabled = true;
  final Color color, textColor;


  CustomTextField({
    this.textEditingController,
    this.iconData,
    this.hintText,
    this.isObsecre,
    this.enabled,
    this.textColor = Colors.white, required this.color,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xffb54aa99),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 12,bottom: 5),
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              enabled: widget.enabled,
              controller: widget.textEditingController,
              obscureText: widget.isObsecre!,
              cursorColor: Theme.of(context).primaryColor,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusColor: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
