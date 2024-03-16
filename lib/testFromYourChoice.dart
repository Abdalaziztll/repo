// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:glass/HomePage1.dart';
import 'package:glass/questionPage.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class testFromYourChoicePage extends StatefulWidget {
  testFromYourChoicePage({super.key});

  @override
  State<testFromYourChoicePage> createState() => _testFromYourChoicePageState();
}

class _testFromYourChoicePageState extends State<testFromYourChoicePage> {
  @override
  
  Widget build(BuildContext context) {
   
    
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Image(
          image: AssetImage("assets/image/3.jpg"),
          fit: BoxFit.fill,
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            "assets/image/3.jpg",
          ),
          fit: BoxFit.fill,
        )),
        child: Center(
          child: SizedBox(
            width: 400,
            height: 150,
            child: SingleChildScrollView(
                child: Column(
              children: [
                MultiSelectDialogField(
                    buttonText: Text(
                      "select names",
                      style: TextStyle(color: Colors.white),
                    ),
                    items: ListModelName.map(
                        (iteam) => MultiSelectItem(iteam, iteam.name)).toList(),
                    onConfirm: (values) {
                      selectedname = values;
                 
                    }),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  
                  child: ElevatedButton(
                      onPressed: () {
                        if (selectedname.isEmpty) {
   
   
  
   } 
  else {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => questionPage(currentLevel: 1,)),
    );

     //مع اني حطيت سيت ستيت لترجع فاضية بس لما عم اطلع من اختبار عم لاقي المربعات لسا موجودين
          setState(() {
      selectedname = [];
    });
  }
                            
                      
                      },
                      child: Text("start the Quiz")),
                )
              ],
            
            )
            
            ),
          ),
        ),
      ),
    );
  }

  final ListModelName = [
    NameModel(name: "ali"),
    NameModel(name: "omar"),
    NameModel(name: "hamza"),
    NameModel(name: "belal"),
    NameModel(name: "Kaled"),
    NameModel(name: "Abd Alrahman"),
  ];
  List<NameModel?> selectedname = [];


}

class NameModel {
  final String name;
  NameModel({
    required this.name,
  });
}
