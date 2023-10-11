// import 'dart:developer';

// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meatshopproj/api.dart';
import 'package:meatshopproj/home/carouselindicator.dart';
import 'package:meatshopproj/home/drawer.dart';
import 'package:meatshopproj/home/gridviews.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

import '../modals/homemodal.dart';

// import 'bottomnavigation.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}
ValueNotifier<List<Categories>> categoryNotifier = ValueNotifier([]);
ValueNotifier<List<Banners>> bannerNotifier = ValueNotifier([]);


class _HomepageState extends State<Homepage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeUser();
  }

  var bottomNavIndex=0;

  @override
  Widget build(BuildContext context) {
    
   
   
    WidgetsBinding.instance.addPostFrameCallback((_) async{
    
    });
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
  void homeUser() async{
    const userid ="565";
    const key = "koFCpCMzm8hhn9ULj0BnUzZkpqM3rg9Mqdii3FwPRjBwZFQWriIJYgB5jjOhNIyasSl4RrmCFLW3tHDRtI39viQbYEP7nEkYvba2wstThYWjvkndZq0zaXJaWjuqeZo8vR3MMHa6OhBDKsFPmWOlIM4H1TgB1fudQndGKzUPg8YhAoaAoCxZ562zjbQdPO73ZkwyPV7iOIkyH11ZLAN42a5dgLH22Rs1VasEWBKdfkqMLPfDbLQpF9Ofqah4fqwc";
    
    
     final formdata = FormData.fromMap({
     'user_id': userid,
     'key': key
     });
     final result = await Api().homeUserApi(formdata);

      if (result != null) {
        if (result.status == "success") {
          if(result.data != null){

         
            categoryNotifier.value.clear();
            categoryNotifier.value.addAll(result.data!.categories!);
            
              
               
            // showSuccessmessage();
             print("**********$categoryNotifier");
          }
          
        
        
          
        } else {
         
            // categoryNotifier.value.clear();
        }
      }
       
     
    
  }
  
  void showErrormessage() {
    MotionToast.error(
      title: const Text(
        'Error',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      description: Text("message"),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: true,
    ).show(context);

  }
  
  void showSuccessmessage() {
     MotionToast.success(
      title: const Text(
        'Success',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      description: Text("message"),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: true,
    ).show(context);
  }
}


