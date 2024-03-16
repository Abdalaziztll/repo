import 'package:flutter/material.dart';
import 'package:glass/categories.dart';
import 'package:glass/levels.dart';
import 'package:glass/modules/Schame.dart';
import 'package:glass/pdfview.dart';
import 'package:glass/testFromYourChoice.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomePage2 extends StatelessWidget {
  HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 3,
            leading: Container(
              width: 50,
              height: 50,
              color: Colors.white,
            ),
            bottom: TabBar(tabs: [
              Tab(
                height: 60,
                text: "المخطط",
                icon: Icon(Icons.schema),
              ),
              Tab(
                height: 60,
                text: "مستويات",
                icon: Icon(Icons.stairs),
              ),
              Tab(
                height: 60,
                text: "اختبار",
                icon: Icon(Icons.book_sharp),
              ),
              Tab(
                height: 60,
                text: "تصفح",
                icon: Icon(Icons.picture_as_pdf),
              )
            ]),
          ),
          body: TabBarView(children: [
            Schame(),
            Levels(
              LevelNameForClassLevel: '',
              TheValueOfAdvancedInLevel: 1,
            ),
            testFromYourChoicePage(),
           categories()
          ])),
    );
  }
}
