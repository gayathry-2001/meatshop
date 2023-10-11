import 'package:flutter/material.dart';
import 'package:meatshopproj/modals/productmodal.dart';
import 'package:meatshopproj/product/product.dart';
// import 'package:meatshopproj/product/product.dart';
import 'package:meatshopproj/singleproduct/singleproduct.dart';

// import '../lists.dart';


class Productgrids extends StatelessWidget {
  const Productgrids({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  ValueListenableBuilder(
      valueListenable: productNotifier, 
      builder: (context, List<Productdata> newproduct, child) {
        return GridView.builder(
                    itemCount: newproduct.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      
                      crossAxisCount: 2,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2), 
                      itemBuilder: (context, index) {
                        final product = productNotifier.value[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(context,
                             MaterialPageRoute(builder: (context){
                              return const Singleproduct();
                             }));
                          },
                          child: Container(
                            height: 50,
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
                                  SizedBox(
                                    height: 125,
                                    width: 150,
                                    child: Image.network(product.image.toString(),fit: BoxFit.fill,)),
                                  const Text("data")
                                ],
                              ),
                            ),
                          ),
                        );
                      }, );
      },);
   
  }
}