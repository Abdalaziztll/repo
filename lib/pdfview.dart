import 'package:flutter/material.dart';
import 'package:glass/HomePage1.dart';
import 'package:glass/pdfIteam.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

List<Personality> foundresult = [];

class PdfPage extends StatefulWidget {
  PdfPage({super.key});

  @override
  State<PdfPage> createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {
  final controller = TextEditingController();

  @override
  void initState() {
    foundresult=ListPdfIteam;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
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
          flexibleSpace: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/3.jpg"), fit: BoxFit.fill)),
          )),
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
        child: SizedBox(
          width:200,
          height: 130,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return pdfItem(
                personality: Personality(
                    name: foundresult[index].name,
                    subname: foundresult[index].subname,
                    pdfpath: foundresult[index].pdfpath),
              );
            },
            itemCount: foundresult.length,
          ),
        ),
      ),
    );
  }

//   void Search(String query){
// final suggestion=ListPdfIteam.where((pdfItem){
//   final namePerson=pdfItem.name ;
//     final subNamePerson=pdfItem.subname ;
//     return namePerson.contains(query) ||subNamePerson.contains(query);

// }).toList();
//  setState(()=>foundresult=suggestion);
//   }
}

List<Personality> runFiltervalue(String lexem, List<Personality> personality) {
  List<Personality> result = [];

  personality.forEach((element) {
    if (element.name.contains(lexem)) {
      result.add(element);
    }
  });

  return result;
  // if(enteredKeyboard.isEmpty){
  //   // result=ListPdfIteam;
  // }
  // else{
  //   // result=ListPdfIteam.where((pdfItem.name.cotains(enteredKeyboard))) .toList();
  // }
}
