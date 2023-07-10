import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopMenuWidget extends StatelessWidget {
  const TopMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 10, // Set this height
      flexibleSpace: Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: const Icon(CupertinoIcons.multiply_square, color: Color(0xffb369b87),),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(CupertinoIcons.slider_horizontal_3, color: Color(0xffb369b87),),
                  onPressed: () {},
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
