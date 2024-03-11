import 'package:flutter/material.dart';
import 'package:glass/categories.dart';
import 'package:glass/levels.dart';
import 'package:glass/testFromYourChoice.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Schame extends StatelessWidget {
   Schame({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Container(
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
         
            
             Center(
              
               child: Container(
                width: 400,
                height: 400,
                child:SfCartesianChart(
                     
                     
                      
                      
                           primaryXAxis: CategoryAxis(),
                           primaryYAxis: NumericAxis(),
                           series: <ChartSeries>[
                ColumnSeries<Levels, String>(
                  dataSource: GetColumnData(),
                  xValueMapper: (Levels l, _) => l.LevelNameForClassLevel,
                  yValueMapper: (Levels l, _) => l.TheValueOfAdvancedInLevel,
                     
                ),
                           ],
                           
                         ),
               ),
             )
             ,
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Container(
              //           width: 110,
              //           height: 70,
              //            decoration: BoxDecoration(
              //                  color: Colors.white.withOpacity(0.3),
              //                 borderRadius:BorderRadius.circular(10)
              //               ),
                           
              //           child: InkWell(
              //             onTap: () {
              //                 Navigator.push(
              //               context,
              //               MaterialPageRoute(
              //                   builder: (context) => categories()));
              //             },
              //             child: Center(
              //                 child: Text(
              //               "تصفح",
              //               style: TextStyle(fontSize: 14, color: Colors.white),
              //             )),
              //           ),
              //         ),
              //         InkWell(
              //           onTap: () {
                          
              //           },
              //           child: InkWell(
              //              onTap: () {
              //               Navigator.push(context,
              //               MaterialPageRoute(  builder:(context)=>Levels(LevelNameForClassLevel: 'i dont Know what i have to put', TheValueOfAdvancedInLevel: 0,))
              //               );// ملاحظة مهمة هون حطيت القيم اي شي بس تشليف لان بدي ياه ياخدني على هاد الكلاس ما بتهمني القيم
              //             },
              //             child: Container(
              //               width: 110,
              //               height: 70,
              //               decoration: BoxDecoration(
              //                  color: Colors.white.withOpacity(0.3),
              //                 borderRadius:BorderRadius.circular(10)
              //               ),
                           
              //               child: Center(
              //                   child: Text(
              //                 "مستويات",
              //                 style: TextStyle(fontSize: 14, color: Colors.white),
              //               )),
              //             ),
              //           ),
              //         ),
              //         InkWell(
              //           onTap: () {
              //             Navigator.push(context, MaterialPageRoute(builder: (context)=>testFromYourChoicePage()));
              //           },
              //           child: Container(
              //             width: 110,
              //             height: 70,
              //               decoration: BoxDecoration(
              //                    color: Colors.white.withOpacity(0.3),
              //                   borderRadius:BorderRadius.circular(10)
              //                 ),
                             
              //             child: Align(
              //               alignment:Alignment.center,
              //                 child: Text("اختبار",
                        
              //               style: TextStyle(fontSize: 14, color: Colors.white),
              //             )),
              //           ),
              //         )
              //       ]),
              // ),
            ],
          ),
        ));
  }
}