// import 'dart:developer';

// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:meatshopproj/home/carouselindicator.dart';
import 'package:meatshopproj/home/drawer.dart';
import 'package:meatshopproj/home/gridviews.dart';

// import 'bottomnavigation.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var bottomNavIndex=0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: CircleAvatar(
          radius: 30,

          child: Image.asset("assets/images/logo-no-background.png",)),
       
          centerTitle: true,
        actions: const [
         Padding(
           padding: EdgeInsets.only(right: 20),
           child: Icon(Icons.notifications_outlined),
         ),
         
         Icon(Icons.shopping_cart), 
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.only(left: 30,right: 30,bottom: 10),
            child: Container(
              padding: const EdgeInsets.only(bottom: 10),
              height: 50,
              child: TextField(               
              decoration: InputDecoration(
                filled: true,
                border: InputBorder.none,
                fillColor: Colors.white,
                prefixIcon: IconButton(onPressed: (){
                }, icon: const Icon(Icons.search))
              ),
                        
                        ),
            ),
          ),          
         ),
      ),
      drawer:  const Draw(),
      body: SafeArea(
        child: Container(
          color: const Color.fromARGB(155, 239, 236, 236),
          child:const SingleChildScrollView(
            // physics: ScrollPhysics(),
            child: Column(
                
              children:  [ 
                CarouselWithIndicatorDemo(),
                 Padding(
                  padding:  EdgeInsets.only(left: 20,right: 20),
                  child:  Row(
                    children: [
                      Text("Categories"),
                      Spacer(),
                      Text("View all",
                      style: TextStyle(
                        color: Colors.blue
                      ),)
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 20,right: 20,top: 10),
                  child: LimitedBox(
                    maxHeight: 450,
                    child: Grids()
                  ),
                ),            
              ],
                
                
            ),
          ),
        ),
      ),
    );
    
  }
}


