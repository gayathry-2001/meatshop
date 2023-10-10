import 'package:flutter/material.dart';
import 'package:meatshopproj/home/homepage.dart';
import 'package:meatshopproj/product/product.dart';

import '../lists.dart';
import '../modals/homemodal.dart';

class Grids extends StatelessWidget {
  const Grids({super.key});

  @override
  Widget build(BuildContext context) {
    return  ValueListenableBuilder(
      valueListenable: categoryNotifier,
       builder: (context, List<Categories> newproduct, child) {
         return 

         GridView.builder(
                     physics:const ScrollPhysics(),
                    itemCount: newproduct.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      
                      crossAxisCount: 2,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2), 
                      itemBuilder: (context, index) {
                         final product = categoryNotifier.value[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(context,
                             MaterialPageRoute(builder: (context){
                              return  Product();
                             }));
                          },
                          child: Container(
                            color: const Color.fromARGB(255, 253, 253, 253),
                            height: 20,
                            width: 20,                       
                            child: Padding(
                              padding: const EdgeInsets.only(left:10.0,right: 10,top: 10),
                              child: Column(
                                children: [
                                   Image.network(product.image.toString()),
                                   Text(product.name.toString()),
                                   
                                ],
                              ),
                            ),
                          ),
                        );
                      }, );
    

       },);
    
    
     
  }
}