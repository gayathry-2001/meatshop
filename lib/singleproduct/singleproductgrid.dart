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
  
  var nameval;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    
    final double itemHeight = (size.height - kToolbarHeight) / 2.5;
    final double itemWidth = size.width;
   singleproUser2();
    return  GridView.builder(
                    physics: const ScrollPhysics(),
                    itemCount: carouselimg.length,
                    gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: (itemHeight/itemWidth),
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
                            height: 20,
                            width: 20,
                            // decoration: BoxDecoration(
                            //   image: DecorationImage(image: AssetImage(
                            //     gridimg[index]
                            //   ),fit: BoxFit.fill)
                            // ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10,right: 10,left: 10),
                              child: Column(
                                children: [
                                  SizedBox(
                                 
                                    child: Image.asset(gridimg[index])),
                                   Text(nameval)
                                ],
                              ),
                            ),
                          ),
                        );
                      }, );
  }

   void singleproUser2() async{
     const prod_id = "213";
     const userid ="";
     const key = "koFCpCMzm8hhn9ULj0BnUzZkpqM3rg9Mqdii3FwPRjBwZFQWriIJYgB5jjOhNIyasSl4RrmCFLW3tHDRtI39viQbYEP7nEkYvba2wstThYWjvkndZq0zaXJaWjuqeZo8vR3MMHa6OhBDKsFPmWOlIM4H1TgB1fudQndGKzUPg8YhAoaAoCxZ562zjbQdPO73ZkwyPV7iOIkyH11ZLAN42a5dgLH22Rs1VasEWBKdfkqMLPfDbLQpF9Ofqah4fqwc";
     
     final formData = FormData.fromMap({
       'product_id' : prod_id,
       'user_id' : userid,
       'key': key
     });
     final result = await Api().singleproductUserApi(formData);
     
     if (result != null){
      if(result.status == "success"){
        nameval = result.data.name.toString();
        
      }
     }
  }
}