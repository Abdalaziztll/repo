import 'package:flutter/material.dart';
import 'package:glass/HomePage1.dart';
import 'package:glass/pdfIteam.dart';
import 'package:glass/pdfview.dart';

class categories extends StatefulWidget {
 
  categories({super.key});

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
     final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePage1()),
                  );
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
                    title: Container(
            width: 300,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(19)),
            child: Center(
              child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      )),
                  onChanged: (value) {
                    setState(() {
                      foundresult = runFiltervalue(value, ListPdfIteam);
                    });
                  }),
            ),
          ),
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
                    "  قبل الهجرة",
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
                      child: Text("بعد الهجرة",
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
                      child: Text("قبل الفتح",
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
                      child: Text("بعد الفتح",
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
