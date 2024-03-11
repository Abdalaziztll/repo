import 'package:flutter/material.dart';
import 'package:glass/HomePage1.dart';

class testFromYourChoicePage extends StatelessWidget {
  const testFromYourChoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          // leading: IconButton(
          //   onPressed: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => HomePage1()));
          //   },
          //   icon: Icon(
          //     Icons.arrow_back,
          //     color: Colors.white,
          //   ),
          // ),
          flexibleSpace: Image(
            image: AssetImage("image/3.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              "image/3.jpg",
            ),
            fit: BoxFit.fill,
          )),
          child: Column(
            children: [

              InkWell(
                onTap: () {
                  
                },
                child: Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(19)
                  ),
                  child: Center(child: Text("اختبار في شخصيات معينة",
                  style: TextStyle(color: Colors.white),
                  )),
                ),
              )
            ],
          ),
    ));
  }
}