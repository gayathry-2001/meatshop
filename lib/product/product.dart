import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meatshopproj/modals/productmodal.dart';
import 'package:meatshopproj/product/productgrids.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../api.dart';


class Product extends StatefulWidget {
   const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
  
}
ValueNotifier<List<Productdata>> productNotifier = ValueNotifier([]);
class _ProductState extends State<Product> {

   
   var id ="";
   var uid ="";

  
  @override
  Widget build(BuildContext context) {
    getval();
    productUser();
    return  Scaffold(
      appBar: AppBar(
        title:const Text("Fresh fish"),
        actions: [
          IconButton(onPressed: (){
    
          }, 
          icon: const Icon(Icons.search)),
          IconButton(onPressed: (){
    
          }, 
          icon: const Icon(Icons.favorite_sharp)),
          IconButton(onPressed: (){
    
          }, 
          icon: const Icon(Icons.shopping_cart_outlined)),
          
        ],
      ),
      body: SafeArea(
        child:Container
      ( color: const Color.fromARGB(255, 239, 236, 236),
        height: double.infinity,
        child:const Padding(
          padding: EdgeInsets.only(left: 20,right: 20,top: 30),
          child: Productgrids())) )
    );
  }
  void productUser() async{
    // const userid ="565";
    const catid="66";
    const key = "koFCpCMzm8hhn9ULj0BnUzZkpqM3rg9Mqdii3FwPRjBwZFQWriIJYgB5jjOhNIyasSl4RrmCFLW3tHDRtI39viQbYEP7nEkYvba2wstThYWjvkndZq0zaXJaWjuqeZo8vR3MMHa6OhBDKsFPmWOlIM4H1TgB1fudQndGKzUPg8YhAoaAoCxZ562zjbQdPO73ZkwyPV7iOIkyH11ZLAN42a5dgLH22Rs1VasEWBKdfkqMLPfDbLQpF9Ofqah4fqwc";
    
    
     final formdata = FormData.fromMap({
     'user_id': uid,
     'category_id':catid,
     'key': key
     });
     final result = await Api().productUserApi(formdata);

      if (result != null) {
        if (result.status == "success") {
          if(result.data != null){
            productNotifier.value.clear();
            productNotifier.value.addAll(result.data!);
            
           
             print("**********$uid");
          }
          
        
        
          
        } else {
         
        
        }
      }
       
     
    
  }
  void getval() async{
    SharedPreferences share = await SharedPreferences.getInstance();
    setState(() {
      id = share.getString("product").toString();
      uid = share.getString("userid").toString();
    });
    
  }
  
 
}