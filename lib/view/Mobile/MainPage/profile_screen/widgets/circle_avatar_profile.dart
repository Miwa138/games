import 'package:flutter/material.dart';

class CircleAvatarProfile extends StatelessWidget {
  const CircleAvatarProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 107,
      height: 107,
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 53,
        child: ClipOval(
          child: Image.network(
            'https://www.gafapay.com/wp-content/uploads/2022/09/team-photo-3.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
