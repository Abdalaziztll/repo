import 'package:flutter/material.dart';
import 'package:glass/HomePage1.dart';
import 'package:glass/pdfview.dart';

class categories extends StatelessWidget {
  categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePage1()));
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
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
          child: GridView(

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            children: [
              InkWell(
                  onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PdfPage()));
                },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                     
                   
                                    child: Center(
                      child: Text(
                    " قبل",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                                    )),
                                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white.withOpacity(0.3)),
                                  ),
                  )),
              InkWell(
                  onTap: () {
                  
                },
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                    
                                    child: Center(
                      child: Text("بعد",
                          style: TextStyle(color: Colors.white, fontSize: 20))),
                                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white.withOpacity(0.3)),
                                  ),
                  )),
              InkWell(
                  onTap: () {
                  
                },
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                         width: 100,
                      height: 220,
                                    child: Center(
                      child: Text("aa",
                          style: TextStyle(color: Colors.white, fontSize: 20))),
                                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white.withOpacity(0.3)),
                                  ),
                  )),
              InkWell(
                onTap: () {
                  
                },
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      
                      width: 100,
                      height: 220,
                    
                                    child: Center(
                      child: Text("mm",
                          style: TextStyle(color: Colors.white, fontSize: 20))),
                                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white.withOpacity(0.3)),
                                  ),
                  ))
            ],
          ),
        ));
  }
}
