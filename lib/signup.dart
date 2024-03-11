import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:glass/HomePage1.dart';

class signup extends StatelessWidget {
  signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "image/3.jpg",
                ),
             //   opacity: 0.7,
                fit: BoxFit.fill)),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Expanded(
                child: Container(
                  height: 650,
                
                  decoration: BoxDecoration(color: Colors.white.withOpacity(0.3)),
                ),
              ),
            ),
            Container(
              child: Text(
                "Sign up",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 40),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 300,
              child: Padding(
                padding: const EdgeInsets.all(19.0),
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white.withOpacity(0.2),
                  ),
                  child: SizedBox(
                    width: 100,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                         suffixIcon:Icon(Icons.person,color: Colors.white,),
                        border: InputBorder.none,
                        hintText: "اسم المستخدم",
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ////////////////
            Positioned(
              left: 0,
              right: 0,
              bottom: 250,
              child: Padding(
                padding: const EdgeInsets.all(19.0),
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white.withOpacity(0.2),
                  ),
                  child: SizedBox(
                    width: 100,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(

                        border: InputBorder.none,
                        suffixIcon:Icon(Icons.key,color: Colors.white,),
                     //    suffix: Text('Password', style: TextStyle(fontSize: 18)),
                        hintText: "الكلمة السرية"
                        ,
                       
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 70,
              left: 50,
              right: 50,
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder:(context)=>HomePage1() )
                    );
                   
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20)),
                      height: 40,
                      width: 70,
                      child: Center(
                          child: Text(
                        "تسجيل",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )))),
            )
          ],
        ),
      ),
    );
  }
}
