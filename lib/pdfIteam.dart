// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'package:glass/quesyionmodel.dart';

class Personality {
  String name;
  String subname;
  String pdfpath;
  Personality({
    required this.name,
    required this.subname,
    required this.pdfpath,
  });
}

class pdfItem extends StatefulWidget {
  final Personality personality;

  pdfItem({
    Key? key,
    required this.personality,
  }) : super(key: key);

  @override
  State<pdfItem> createState() => _pdfItemState();
}

class _pdfItemState extends State<pdfItem> with SingleTickerProviderStateMixin {
  @override
  late final AnimationController controller;
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
  }

  void dispose() {
    controller.dispose();
    super.dispose();
  }

  bool favoritIconLottie = false;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 150,
        height: 70,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15)),
        child: ListTile(
          onLongPress: () {
              Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Scaffold(
                      appBar: AppBar(),
                      body: SfPdfViewer.asset(widget.personality.pdfpath,),),),);
          },
          title: Text(
            widget.personality.name,
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(widget.personality.subname,
              style: TextStyle(color: Colors.white)),
          trailing: InkWell(
              onTap: () {
                if (favoritIconLottie == false) {
                  
                  favoritIconLottie = true;
                  controller.forward();
                  favorite.add(widget.personality);
                } else {
                  favorite.remove(widget.personality);
                  favoritIconLottie = false;
                  controller.reverse();
                }
              },
              child: Lottie.network(
                  'https://lottie.host/e8d7b745-2721-4e39-a7d6-e8ba0e09c951/IVBynM8F7t.json',
                  controller: controller,)),
          onTap: () {},
        ),
      ),
    );
  }
}

List<Personality> ListPdfIteam = [
  Personality(
    name: 'جعفر بن ابي طالب',
    subname: ' اول معرف بالاسلام في القارة الافريقية',
    pdfpath: 'image/squre.pdf',
  ),
  Personality(
    name: 'السيدة خديجة بنت خويلد',
    subname: ' سيدة نساء العالمين.',
    pdfpath: 'image/cachmemory.pdf',
  ),
];


List<Personality> favorite = [];