import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:meatshopproj/home/cart.dart';
import 'package:meatshopproj/home/categories.dart';
import 'package:meatshopproj/home/homepage.dart';
import 'package:meatshopproj/home/settings.dart';

import 'drawer.dart';

class AnimBottomnavigation extends StatefulWidget {
  const AnimBottomnavigation({
    super.key,
  });

  @override
  State<AnimBottomnavigation> createState() => _AnimBottomnavigationState();
}

class _AnimBottomnavigationState extends State<AnimBottomnavigation> {
  var clr =Colors.white;
  GlobalKey navkey = GlobalKey();

  int indexnum=0;
  List tabwid = [   const Homepage(),
                   const Cat(),
                   const Settings()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: CircleAvatar(
          radius: 30,

          child: Image.asset("assets/images/logo-no-background.png",)),
       
          centerTitle: true,
        actions:  [
         const Padding(
           padding: EdgeInsets.only(right: 20),
           child: Icon(Icons.notifications_outlined),
         ),
         IconButton(onPressed: (){
           Navigator.push(context,
           MaterialPageRoute(
            builder: ((context) => const Cart())));
         },
          icon:  const Icon(Icons.shopping_cart), )
        
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
     bottomNavigationBar:AnimatedBottomNavigationBar(
    
     
      onTap: ((int index) {
              setState(() {
                indexnum = index;
              });
              
            } ) ,
            // borderColor: const Color.fromARGB(255, 25, 98, 171) ,
            // backgroundGradient: const LinearGradient(colors:  [  Color.fromARGB(255, 213, 226, 239) 
            // ,Color.fromARGB(255, 216, 229, 239)]),
      iconSize: 30,
      inactiveColor: const Color.fromARGB(255, 25, 98, 171) ,
      activeColor: const Color.fromARGB(255, 244, 130, 54),
       splashColor: const Color.fromARGB(255, 245, 240, 240),
       icons:const [
       Icons.home_rounded,
       Icons.category_rounded,
       Icons.settings_outlined],
        activeIndex: indexnum,
        gapWidth: 10,
        gapLocation: GapLocation.values[2],
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 10,
        rightCornerRadius: 0,
        
        ),

    // bottomNavigationBar:  Padding(
    //   padding: const EdgeInsets.only(left: 10,right: 10,bottom: 40),
    //   child: CurvedNavigationBar(
        
    //     key: navkey,
    //     items:[
    //     Icon(Icons.home,size: 35),
    //     Icon(Icons.category,size: 35),
    //     Icon(Icons.settings,size: 35),
    
    //     ],
        
    //     height: 30,
    //     onTap: (value) {
    //       setState(() {
    //         indexnum = value;
            
    //       });
          
    //     },
    //     backgroundColor: Color.fromARGB(123, 244, 244, 244),
    //     buttonBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
    //     animationCurve: Curves.easeInExpo,
    //     color: const Color.fromARGB(255, 25, 98, 171) 
    //   ),
    // ),
        body: SafeArea(child: tabwid[indexnum]),
    );
      
  }
}
