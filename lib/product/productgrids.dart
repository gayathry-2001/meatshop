import 'package:flutter/material.dart';
// import 'package:meatshopproj/product/product.dart';
import 'package:meatshopproj/singleproduct/singleproduct.dart';

import '../lists.dart';

class Productgrids extends StatelessWidget {
  const Productgrids({super.key});

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
                              return const Singleproduct();
                             }));
                          },
                          child: Container(
                            height: 20,
                            width: 20,
                            // decoration: BoxDecoration(
                            //   image: DecorationImage(image: AssetImage(
                            //     gridimg[index]
                            //   ),fit: BoxFit.fill)
                            // ),
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                              child: Column(
                                children: [
                                  Image.asset(gridimg[index]),
                                  const Text("data")
                                ],
                              ),
                            ),
                          ),
                        );
                      }, );
  }
}