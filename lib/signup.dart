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
          child: Container(
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.2)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 28, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.white, fontSize: 14),
                        hintText: 'Username',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.white, fontSize: 14),
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage1(),
                        ),
                      );
                    },
                    child: Container(
                      color: Colors.white.withOpacity(0.1),
                      width: 100,
                      height: 50,
                      child: Center(
                        child: Text(
                          "SignUp",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                    ),)
              ],
            ),
          )),
    );
  }
}
