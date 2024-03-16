import 'package:flutter/material.dart';
import 'package:glass/pdfIteam.dart';

class FavoraitePage extends StatelessWidget {
  FavoraitePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Personality> Setfav = [];
    pers.forEach(
      (element) {
      print(element.toMap());
        if (element.isFav) {
          Setfav.add(element);
        }
      },
    );
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/image/3.jpg"), fit: BoxFit.fill),
      ),
      child: Center(
        child: (Setfav.length == 0)
            ? Text("There is Nothing in fav")
            : ListView.builder(
                itemCount: Setfav.length,
                //محاولة عدم تكرارا الصفحة المفضلة
                // بس ما زبطت :(

                itemBuilder: (context, index) {
                  // List<Personality> ResultOfFavorait = [];

                  return pdfItem(personality: Setfav.toList().elementAt(index));
                },
              ),
      ),
    );
  }
}
