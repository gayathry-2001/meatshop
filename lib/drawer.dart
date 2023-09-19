import 'package:flutter/material.dart';

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
    return  
       Drawer(
          child: ListView(
            children:   [
             const DrawerHeader(          
              decoration: BoxDecoration(
                color: Colors.blue
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 70,bottom: 10),
                        child: Icon(Icons.person,
                        ),
                      ),
                      Text("welcome to meatshop"),
                    ],
                  ),
                ],
              ),
              ),
              ListTile(
                selectedColor:const Color.fromARGB(255, 244, 130, 54),
                onTap: (){
                  onItemTapped(0);

                },
                selected: selectedIndex ==0,
                leading: const Icon(Icons.login_rounded,),
                title:const Text("Login"),
              ),
              ListTile(
                selectedColor:const Color.fromARGB(255, 244, 130, 54),
                onTap: (){
                  onItemTapped(1);

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

                },
                selected: selectedIndex ==4,
                leading:const Icon(Icons.summarize_sharp),
                title: const Text("Recipes"),
              ),
              ListTile(
                selectedColor:const Color.fromARGB(255, 244, 130, 54),
                onTap: (){
                  onItemTapped(5);

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

                },
                selected: selectedIndex ==7,
                leading:const Icon(Icons.call_rounded,),
                // focusColor: Colors.orange,
                title:const Text("Contact"),
              ),
            ],
            

          ),

        ); 
    
  }
}