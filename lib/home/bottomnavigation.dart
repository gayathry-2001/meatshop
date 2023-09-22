import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class AnimBottomnavigation extends StatefulWidget {
  const AnimBottomnavigation({
    super.key,
  });

  @override
  State<AnimBottomnavigation> createState() => _AnimBottomnavigationState();
}

class _AnimBottomnavigationState extends State<AnimBottomnavigation> {
  int indexnum=0;
  List tabwid = [ 
                   const Text("Favorite",style: TextStyle(fontSize: 30),),
                   const Text("Settings",style: TextStyle(fontSize: 30)),];
  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
    onTap: ((int index) {
            setState(() {
              indexnum = index;
            });
            
          } ) ,
    iconSize: 30,
    
    // activeColor: Color(),
     splashColor: const Color.fromARGB(255, 245, 240, 240),
     icons:const [
     Icons.category_rounded,
     Icons.settings_outlined],
      activeIndex: 0,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.verySmoothEdge,
      leftCornerRadius: 32,
      rightCornerRadius: 32,
      );
      
  }
}
