// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:glass/questionPage.dart';

class LevelIteam extends StatelessWidget {
  String NameOftext;

  LevelIteam({
    Key? key,
    required this.NameOftext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100,
        height: 30,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.3),
        ),
        child: Center(
          child: Text(
            NameOftext,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
