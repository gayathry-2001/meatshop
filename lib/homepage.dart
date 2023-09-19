// import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:meatshopproj/drawer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    
    void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
    return  Scaffold(
      appBar: AppBar(
        
        // toolbarHeight: 150,
        backgroundColor: const Color.fromARGB(255, 25, 98, 171),
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
                // focusColor: Colors.white,
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
        child: ListView(
      
          children: [
           CarouselSlider(
              items: [
                  
                //1st Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/fishimg.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                  
                //2nd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                     image: AssetImage("assets/images/fishimg.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                  
                //3rd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/fishimg.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                  
                //4th Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/fishimg.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                  
                //5th Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/fishimg.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
        
          ],
              
            //Slider Container properties
              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
          ),
          ],
      
      
        ),
      ),
    );
    
  }
}