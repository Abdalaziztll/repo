import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:
            DecorationImage(image: AssetImage("assets/image/3.jpg"), fit: BoxFit.fill),
      ),
      child: Center(
        child: Text(
          "ProfilePage",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
