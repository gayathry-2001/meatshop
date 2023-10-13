import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// import 'package:meatshopproj/singleproduct/singleproduct.dart';
// import 'package:meatshopproj/recipes/recipes.dart';
// import 'package:meatshopproj/singleproduct/singleproduct.dart';

import '../api.dart';
import '../lists.dart';

// ignore: must_be_immutable
class SingleProductgrids extends StatefulWidget {

  const SingleProductgrids({super.key});
 
  @override
  State<SingleProductgrids> createState() => _SingleProductgridsState();
}


class _SingleProductgridsState extends State<SingleProductgrids> {
   String? nameval;
  @override

  
 

  @override
  Widget build(BuildContext context) {
    
   
    return  GridView.builder(
                    physics: const ScrollPhysics(),
                    itemCount: carouselimg.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    
                      crossAxisCount: 2,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2), 
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            // Navigator.push(context,
                            //  MaterialPageRoute(builder: (context){
                            //   return const Recipes();
                            //  }));
                          },
                          child: Container(
                            color: Colors.white,
                           
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10,right: 10,left: 10),
                              child: Column(
                                children: [
                             
                                 
                                    Image.asset(gridimg[index],fit: BoxFit.fill,),
                                   Text(name[index])
                                ],
                              ),
                            ),
                          ),
                        );
                      }, );
  }
}