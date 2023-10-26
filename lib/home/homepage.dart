// import 'dart:developer';

// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meatshopproj/api.dart';
import 'package:meatshopproj/home/carouselindicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../modals/homemodal.dart';
import 'gridviews.dart';

// import 'bottomnavigation.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}
ValueNotifier<List<Categories>> categoryNotifier = ValueNotifier([]);
ValueNotifier<List<Banners>> bannerNotifier = ValueNotifier([]);

class _HomepageState extends State<Homepage> {
 
  var id ="";
  // late Future <List<Categories>> items;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
       homeUser();
    });
   
    
  }

  var bottomNavIndex=0;

  @override
  Widget build(BuildContext context) {
    getval(); 
 
    WidgetsBinding.instance.addPostFrameCallback((_) async{
    
    });
    return  Scaffold(

     
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
  
    const key = "koFCpCMzm8hhn9ULj0BnUzZkpqM3rg9Mqdii3FwPRjBwZFQWriIJYgB5jjOhNIyasSl4RrmCFLW3tHDRtI39viQbYEP7nEkYvba2wstThYWjvkndZq0zaXJaWjuqeZo8vR3MMHa6OhBDKsFPmWOlIM4H1TgB1fudQndGKzUPg8YhAoaAoCxZ562zjbQdPO73ZkwyPV7iOIkyH11ZLAN42a5dgLH22Rs1VasEWBKdfkqMLPfDbLQpF9Ofqah4fqwc";
    
    
     final formdata = FormData.fromMap({
     'user_id': id,
     'key': key
     });
     final result = await Api().homeUserApi(formdata);
      print("fghgfh$id");
      if (result != null) {
        if (result.status == "success") {
          if(result.data != null){
            // saveval2(result.data!.categories!);
              categoryNotifier.value.clear();
           setState(() {
            
            categoryNotifier.value.addAll(result.data!.categories!);
            print("sdfghk");
           });
         
           
            
              
               
            // showSuccessmessage();
             print("**********$categoryNotifier");
          } 
        } 
      } 
  }
 
  void getval() async{
    SharedPreferences share = await SharedPreferences.getInstance();
       id = share.getString("userid")!;
  }

  // void saveval2(catid) async{
  //   SharedPreferences share = await SharedPreferences.getInstance();
  //   share.setString("product",catid);
    
  // }
}


