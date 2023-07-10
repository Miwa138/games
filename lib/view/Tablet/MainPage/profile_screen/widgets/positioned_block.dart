import 'package:flutter/material.dart';

class PositinedBlock extends StatelessWidget {
  const PositinedBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Positioned(
          left: 30.0,
          top: 60.0,
          child: new Container(
            width: 100.0,
            height: 80.0,
            decoration: new BoxDecoration(color: Colors.red),
            child: new Text('hello'),
          )
      ),
    );
  }
}
