import 'package:flutter/material.dart';

import '../lists.dart';

class Grids extends StatelessWidget {
  const Grids({super.key});

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
                    itemCount: carouselimg.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20), 
                      itemBuilder: (context, index) {
                        return Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            // color: Colors.red,
                            image: DecorationImage(image: AssetImage(
                              gridimg[index]
                            ),fit: BoxFit.fill)
                          ),
                        );
                      }, );
  }
}