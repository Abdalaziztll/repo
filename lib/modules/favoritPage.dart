import 'package:flutter/material.dart';
import 'package:glass/pdfIteam.dart';

class FavoraitePage extends StatelessWidget {
  FavoraitePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:
            DecorationImage(image: AssetImage("image/3.jpg"), fit: BoxFit.fill),
      ),
      child: Center(
        child: (favorite.length == 0)
            ? Text("There is Nothing in fav")
            : ListView.builder(
                itemCount: favorite.length,
                //محاولة عدم تكرارا الصفحة المفضلة
                // بس ما زبطت :(

                itemBuilder: (context, index) {
                  // List<Personality> ResultOfFavorait = [];

                  return pdfItem(personality: favorite[index]);
                },
              ),
      ),
    );
  }
}
