// import 'dart:developer';

// import 'package:carousel_slider/carousel_slider.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:meatshopproj/home/carouselindicator.dart';
import 'package:meatshopproj/home/drawer.dart';
import 'package:meatshopproj/home/gridviews.dart';
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

       bottomNavigationBar: AnimatedBottomNavigationBar(
        gapWidth: 20,
        icons: const [
        Icons.home,
        Icons.category_rounded,
        Icons.settings_outlined],
        activeIndex: bottomNavIndex, 
        onTap: (index) => setState(() => bottomNavIndex = index),
   ),

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
            child: SizedBox(
              height: 40,
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
        child: SingleChildScrollView(
          child: Column(
              
            children:  [ 
              CarouselWithIndicatorDemo(),
              const Padding(
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
             const Padding(
                padding:  EdgeInsets.only(left: 20,right: 20,top: 10),
                child: LimitedBox(
                  maxHeight: 500,
                  child: Grids()
                ),
              ),            
            ],
              
              
          ),
        ),
      ),
    );
    
  }
}

