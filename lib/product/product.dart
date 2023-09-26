import 'package:flutter/material.dart';
import 'package:meatshopproj/home/gridviews.dart';
import 'package:meatshopproj/product/productgrids.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
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
}