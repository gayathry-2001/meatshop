import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../api.dart';
import 'bottomnavigation.dart';
import 'gridviews.dart';
import 'homepage.dart';

class Cat extends StatefulWidget {
  const Cat({super.key});

  @override
  State<Cat> createState() => _CatState();
}

class _CatState extends State<Cat> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      // appBar: AppBar(
        
      //   title: const Text("Categories"),
      // ),
      body:   SafeArea(
        child: Container(
          height: double.infinity,
          color: const Color.fromARGB(255, 239, 236, 236),
          child: const Padding(
            padding: EdgeInsets.only(left: 20,right: 20,top: 20),
            child:Grids(),
          ),
        ) ),
    );
  }

  void categoryUser() async{
    const userid ="565";
    const key = "koFCpCMzm8hhn9ULj0BnUzZkpqM3rg9Mqdii3FwPRjBwZFQWriIJYgB5jjOhNIyasSl4RrmCFLW3tHDRtI39viQbYEP7nEkYvba2wstThYWjvkndZq0zaXJaWjuqeZo8vR3MMHa6OhBDKsFPmWOlIM4H1TgB1fudQndGKzUPg8YhAoaAoCxZ562zjbQdPO73ZkwyPV7iOIkyH11ZLAN42a5dgLH22Rs1VasEWBKdfkqMLPfDbLQpF9Ofqah4fqwc";
    
    
     final formdata = FormData.fromMap({
     'user_id': userid,
     'key': key
     });
     final result = await Api().homeUserApi(formdata);
      print("###############$result");
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
}