import 'package:flutter/material.dart';
import 'package:meatshopproj/recipes/recipes.dart';
import 'package:meatshopproj/singleproduct/singleproduct.dart';

import '../lists.dart';

class SingleProductgrids extends StatelessWidget {
  const SingleProductgrids({super.key});

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
                    itemCount: carouselimg.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      
                      crossAxisCount: 2,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2), 
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(context,
                             MaterialPageRoute(builder: (context){
                              return const Recipes();
                             }));
                          },
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage(
                                gridimg[index]
                              ),fit: BoxFit.fill)
                            ),
                          ),
                        );
                      }, );
  }
}