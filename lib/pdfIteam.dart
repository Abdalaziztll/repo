// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'package:glass/quesyionmodel.dart';

class Personality {
  String name;
  String subname;
  String pdfpath;
  bool isFav;
  Personality({
    required this.name,
    required this.subname,
    required this.pdfpath,
    this.isFav = false,
  });

  @override
  bool operator ==(covariant Personality other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.subname == subname &&
        other.pdfpath == pdfpath &&
        other.isFav == isFav;
  }

  @override
  int get hashCode {
    return name.hashCode ^ subname.hashCode ^ pdfpath.hashCode ^ isFav.hashCode;
  }

  Personality copyWith({
    String? name,
    String? subname,
    String? pdfpath,
    bool? isFav,
  }) {
    return Personality(
      name: name ?? this.name,
      subname: subname ?? this.subname,
      pdfpath: pdfpath ?? this.pdfpath,
      isFav: isFav ?? this.isFav,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'subname': subname,
      'pdfpath': pdfpath,
      'isFav': isFav,
    };
  }

  factory Personality.fromMap(Map<String, dynamic> map) {
    return Personality(
      name: map['name'] as String,
      subname: map['subname'] as String,
      pdfpath: map['pdfpath'] as String,
      isFav: map['isFav'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Personality.fromJson(String source) =>
      Personality.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Personality(name: $name, subname: $subname, pdfpath: $pdfpath, isFav: $isFav)';
  }
}

late List<Personality> pers;

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
    pers = [];
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
          title: Text(
            widget.personality.name,
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(widget.personality.subname,
              style: TextStyle(color: Colors.white)),
          trailing: InkWell(
              
              onTap: () {
                if (!widget.personality.isFav) {
                  favoritIconLottie = true;
                  controller.forward();
                  Personality personality = Personality(
                      name: widget.personality.name,
                      subname: widget.personality.subname,
                      pdfpath: widget.personality.pdfpath,
                      isFav: true);
                  pers.add(personality);
                  // Setfav.add(widget.personality);
                } else {
                  //  bool temp =   Setfav.remove(widget.personality);

                  //  print(temp);
                  favoritIconLottie = false;
                  controller.reverse();

                  widget.personality.isFav = false;
                }
              },
              child: Lottie.network(
                'https://lottie.host/e8d7b745-2721-4e39-a7d6-e8ba0e09c951/IVBynM8F7t.json',
                controller: controller,
              )),
          onTap: () {
            Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(),
                      body: SfPdfViewer.asset(
                        widget.personality.pdfpath,
                      ),
                    ),
                  ),
                );
          },
        ),
      ),
    );
  }
}

List<Personality> ListPdfIteam = [
  Personality(
    name: 'جعفر بن ابي طالب',
    subname: ' اول معرف بالاسلام في القارة الافريقية',
    pdfpath: 'assets/image/Khadija.pdf',
  ),
  Personality(
    name: 'السيدة خديجة بنت خويلد',
    subname: ' سيدة نساء العالمين.',
    pdfpath: 'assets/image/JaffarBnAbiTaleb.pdf',
  ),
];
//List<Personality> favorite = [];
//List <Personality>favorite100=List.from(Setfav);
// Set<Personality> Setfav={};
//List<Personality> favorite2 = [];