// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:glass/HomePage1.dart';
import 'package:glass/Leveliteam.dart';
import 'package:glass/questionPage.dart';

class Levels extends StatelessWidget {
  String LevelNameForClassLevel;
  int TheValueOfAdvancedInLevel;
  Levels({
    Key? key,
    required this.LevelNameForClassLevel,
    required this.TheValueOfAdvancedInLevel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //   leading: IconButton(
        //     onPressed: () {
        //       Navigator.push(
        //           context, MaterialPageRoute(builder: (context) => HomePage1()));
        //     },
        //     icon: Icon(
        //       Icons.arrow_back,
        //       color: Colors.white,
        //     ),
        //  ),
        flexibleSpace: Image(
          image: AssetImage("image/3.jpg"),
          fit: BoxFit.fill,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "image/3.jpg",
                ),
                //   opacity: 0.7,
                fit: BoxFit.fill)),
        child: SingleChildScrollView(
          child: SizedBox(
            height: 800,
            child: ListView.builder(
              itemCount: LevelsList.length,
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => questionPage(
                                    currentLevel: index,
                                  )));
                    },
                    child: LevelIteam(
                        NameOftext: LevelsList[index].LevelNameForClassLevel));
              },
            ),
          ),
        ),
      ),
    );
  }
}

// انا همي من هي الليست ان تزداد المستويات حسب الليست و القيم يلي حطيتها هي لازم تكون قيم التقدم او الاجابات الصحيحة بالمستوى حاليا شلفتها شو ماكان
List<Levels> LevelsList = [
  Levels(
    LevelNameForClassLevel: "المستوى الاول",
    TheValueOfAdvancedInLevel: 1,
  ),
  Levels(
    LevelNameForClassLevel: " المستوى الثاني",
    TheValueOfAdvancedInLevel: 2,
  ),
  Levels(
    LevelNameForClassLevel: "المستوى الثالث",
    TheValueOfAdvancedInLevel: 3,
  ),
  Levels(
    LevelNameForClassLevel: "المستوى الرابع",
    TheValueOfAdvancedInLevel: 3,
  ),
  Levels(
    LevelNameForClassLevel: "المستوى الخامس",
    TheValueOfAdvancedInLevel: 7,
  ),
  Levels(
    LevelNameForClassLevel: "المستوى السادس",
    TheValueOfAdvancedInLevel: 1,
  ),
];
List<Levels> GetColumnData() {
  List<Levels> columnData = [
    Levels(
      LevelNameForClassLevel: "المستوى الاول",
      TheValueOfAdvancedInLevel: 3,
    ),
    Levels(
      LevelNameForClassLevel: " المستوى الثاني",
      TheValueOfAdvancedInLevel: 4,
    ),
    Levels(
      LevelNameForClassLevel: "المستوى الثالث",
      TheValueOfAdvancedInLevel: 1,
    ),
    Levels(
      LevelNameForClassLevel: "المستوى الرابع",
      TheValueOfAdvancedInLevel: 3,
    ),
    Levels(
      LevelNameForClassLevel: "المستوى الخامس",
      TheValueOfAdvancedInLevel: 7,
    ),
    Levels(
      LevelNameForClassLevel: "المستوى السادس",
      TheValueOfAdvancedInLevel: 1,
    ),
  ];
  return columnData;
}
