import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:games_design/view/Mobile/MainPage/utils/media_query_class.dart';

class PaginationWidget extends StatelessWidget {
  const PaginationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: Helper.getScreenWidth(context) * 0.96,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){},
              child: const Icon(CupertinoIcons.arrowtriangle_left_fill, size: 18,),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              child: Text("1...101"),
            ),
            InkWell(
              onTap: (){},
              child: const Icon(CupertinoIcons.arrowtriangle_right_fill, size: 18,),
            )
          ],
        ),
      ),
    );
  }
}
