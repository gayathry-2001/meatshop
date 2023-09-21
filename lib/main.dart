import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meatshopproj/login.dart';

void main(List<String> args) {
  runApp(Myapp());
//   SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//     statusBarColor: Color.fromARGB(255, 117, 76, 175),
// ));

}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
    
      
      
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 25, 98, 171) 
        ),
        
        // applyElevationOverlayColor: false,
        inputDecorationTheme: const InputDecorationTheme(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color:  Color.fromARGB(255, 25, 98, 171),
            )
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 123, 122, 126)
            )
          ),
       
        )
      ),
        
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds:2),
    () {
    Navigator.pushReplacement(context,
    MaterialPageRoute(builder: (context)=>
    const Loginpage()));
      });
           




  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color:  Color.fromARGB(255, 25, 98, 171),
        image: DecorationImage(image: 
        AssetImage("assets/images/logo-no-background.png"),
        fit: BoxFit.contain)
      ),

    );
  }
}