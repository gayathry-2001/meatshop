import 'package:flutter/material.dart';
import 'package:meatshopproj/home/about.dart';
import 'package:meatshopproj/home/bottomnavigation.dart';
import 'package:meatshopproj/home/editprof.dart';
import 'package:meatshopproj/home/faq.dart';
import 'package:meatshopproj/home/homepage.dart';
// import 'package:meatshopproj/home/homepage.dart';
import 'package:meatshopproj/login.dart';
import 'package:meatshopproj/recipes/recipes.dart';

import '../modals/homemodal.dart';

class Draw extends StatefulWidget {
  const Draw({super.key});

  @override
  State<Draw> createState() => _DrawState();
}

class _DrawState extends State<Draw> {
   
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
     void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
    return  ValueListenableBuilder(
      valueListenable: bannerNotifier,
       builder:(context, List <Banners> newproduct, child) {
     

        return 
         Drawer(
          child: ListView(
           
            children:   [
             const DrawerHeader(  
                     
              decoration: BoxDecoration(
                image: DecorationImage(
                image: AssetImage("assets/images/drawrbgimg.jpg"),
                fit: BoxFit.fill)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 70,bottom: 10),
                    child: Icon(Icons.person,
                    size: 40,
                    color: Colors.white,
                    ),
                  ),
                  Text("Welcome to meatshop",style: TextStyle(
                    color: Colors.white,
                    fontSize: 23
                  ),),
                ],
              ),
              ),
              ListTile(
                selectedColor:const Color.fromARGB(255, 244, 130, 54),
                onTap: (){
                  onItemTapped(0);
                  Navigator.push(context, MaterialPageRoute(builder: 
                  (context){
                    return const Loginpage();
                  }));

                },
                selected: selectedIndex ==0,
                leading: const Icon(Icons.login_rounded,),
                title:const Text("Logout"),
              ),
              ListTile(
                selectedColor:const Color.fromARGB(255, 244, 130, 54),
                onTap: (){
                  onItemTapped(1);
                   Navigator.push(context, MaterialPageRoute(builder: 
                  (context){
                    return const AnimBottomnavigation();
                  }));

                },
                selected: selectedIndex ==1,
                leading: const Icon(Icons.set_meal_sharp,),
                title:const Text("All product")
              ),
              ListTile(
                selectedColor:const Color.fromARGB(255, 244, 130, 54),
                onTap: (){                 
                  onItemTapped(2);
                },
                selected: selectedIndex ==2,               
                leading:const Icon(Icons.local_library_sharp,),
                
                title:const Text("Refer & Earn"),
              ),
              
              ListTile(
               selectedColor:const Color.fromARGB(255, 244, 130, 54),
               onTap: (){
                  onItemTapped(3);

                },
                selected: selectedIndex ==3,
                leading:const Icon(Icons.local_offer,),
                title:const Text("Offers"),
              ),
              ListTile(
                selectedColor:const Color.fromARGB(255, 244, 130, 54),
                onTap: (){
                  onItemTapped(4);
                   Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                   return const Recipes();
                  }));

                },
                selected: selectedIndex ==4,
                leading:const Icon(Icons.summarize_sharp),
                title: const Text("Recipes"),
              ),
              ListTile(
                selectedColor:const Color.fromARGB(255, 244, 130, 54),
                onTap: (){
                  onItemTapped(5);
                   Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                   return const Faq(
                    desc: "FAQS",
                   );
                  }));

                },
                selected: selectedIndex ==5,
                leading: const Icon(Icons.forum,),
                // focusColor: Colors.orange,
                title:const Text("FAQ"),
              ),
              ListTile(
                selectedColor:const Color.fromARGB(255, 244, 130, 54),
                onTap: (){
                  onItemTapped(6);
                   Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                   return const About();
                  }));

                },
                selected: selectedIndex ==6,
                leading:const Icon(Icons.info_sharp,),
                // focusColor: Colors.orange,
                title:const Text("About"),
              ),
              ListTile(
                selectedColor:const Color.fromARGB(255, 244, 130, 54),
                onTap: (){
                  onItemTapped(7);
                   Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                   return const Faq(
                   desc: "Contact",
                   );
                  }));

                },
                selected: selectedIndex ==7,
                leading:const Icon(Icons.call_rounded,),
                // focusColor: Colors.orange,
                title:const Text("Contact"),
              ),
              ListTile(
                selectedColor:const Color.fromARGB(255, 244, 130, 54),
                onTap: (){
                  onItemTapped(8);
                   Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                   return const Editprof();
                  }));

                },
                selected: selectedIndex ==8,
                leading:const Icon(Icons.edit,),
                // focusColor: Colors.orange,
                title:const Text("Edit profile"),
              ),
            ],
            

          ),

        ); 
    
       } );
      
  }
}