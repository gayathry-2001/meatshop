import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meatshopproj/modals/singleproductmodal.dart';

import '../api.dart';
import 'Bottombar.dart';
import 'singleproductgrid.dart';

class Singleproduct extends StatefulWidget {  
  const Singleproduct({super.key});

  @override
  State<Singleproduct> createState() => _SingleproductState();
}
// ValueNotifier<List<Singledata>> singleproNotifier = ValueNotifier([]);

class _SingleproductState extends State<Singleproduct> {
  
  var kgcount = 0;
  var gmcount = 0;
  var dropdownvalue = "Select";
  var Singleproname;
  var singleproimg ;
  var singlprodesc;
  var singleproprice;
  get kg => kgcount;
  get gm => gmcount;
  get pricereq => "$kg.$gm";
  get t => int.parse(singleproprice);
  get p => double.parse(pricereq);
  get total => p * t;
  
  var cuts = [    
    'Half',
    'Full',
    'Quarter',
    
  ];
   var iccolor= const Color.fromARGB(255, 246, 242, 242); 
  @override
  Widget build(BuildContext context) {
    singleproUser();
    return  Scaffold(
      
      appBar: AppBar(
        title:  Text(Singleproname),
        actions: [
          IconButton(onPressed: (){
    
          }, 
          icon: const Icon(Icons.shopping_cart_outlined)),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  color: const Color.fromARGB(255, 239, 236, 236),
                  child: Column(
                    children: [
                      Container(
                        height: 230,
                        decoration:  BoxDecoration(
                          color: Colors.white10,
                          image: DecorationImage(image: NetworkImage(singleproimg.toString()),
                          fit: BoxFit.fill)
                        ),),
                    
                 Container(
                  height: 60,
                  decoration:const  BoxDecoration(
                    color: Colors.white,
                    boxShadow:[BoxShadow(color:Color.fromARGB(255, 156, 143, 143),
                    blurRadius: 3),  
                    ]),
                   child: Padding(
                     padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
                     child:  Text(Singleproname,
                         maxLines: 2,),
                   ),
                 ),
                    const SizedBox(height: 10,),
                       Container(
                        height: 60,
                        decoration:const  BoxDecoration(
                    color: Colors.white,
                    boxShadow:[BoxShadow(color:Color.fromARGB(255, 156, 143, 143),
                    blurRadius: 3),  
                    ]),
                         child:  Padding(
                           padding: const EdgeInsets.only(left: 20,right: 20),
                           child: Row(
                             children: [
                                const Text("Choose your cut"),
                                const Spacer(),
                                Text(dropdownvalue),
                                    DropdownButton(
                                      
                                      // value: dropdownvalue,
                                      icon:  const Icon(Icons.keyboard_arrow_down),
                                      items: cuts.map((String cuts) {
                                         return DropdownMenuItem(
                                                value: cuts,
                                                child: Text(cuts),
                                                  );
                                           
                                                  }).toList(),
                                     onChanged: (String? newValue) { 
                                            setState(() {
                                              dropdownvalue = newValue!;
                                                            
                                            });
                                          },)  
                             ],
                           ),
                         ),
                       ),
                     const SizedBox(height: 10,),
                     Container(
                    decoration:const  BoxDecoration(
                    color: Colors.white,
                    boxShadow:[BoxShadow(color:Color.fromARGB(255, 156, 143, 143),
                    blurRadius: 3),  
                    ]),
                       child: Column(
                         children: [
                             Padding(
                             padding: const EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 10),
                             child:  Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               const Text("Request your quantity"),
                                Row(
                                  children: [
                                    Text("whole: 180/500gm"),
                                    const Spacer(),
                                    Text("\$ $singleproprice")
                                  ],
                                ),             
                              ],
                             ),
                           ),
                        
                     
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Row(
                        children: [
                          Column(
                            children: [
                              const Text("Kilogram",style: TextStyle(
                                fontSize: 20
                              ),),
                              Row(
                                children: [
                                  IconButton(onPressed: (){
                                   setState(() {
                                    if(kgcount!=0) {
                                      kgcount--;
                                    }
                                    });
                                  }, icon: const Icon(Icons.remove_circle_outline,
                                  size: 35,),
                                  ),
                                   Text("$kgcount",style: const TextStyle(
                                fontSize: 20
                              ),),
                                   IconButton(onPressed: (){
                                    setState(() {
                                      kgcount++ ;
                                    });
                              }, icon: const Icon(Icons.add_circle_outline,
                              size: 35,))
                                ],
                                
                              ),
                      
                            ],
                          ),
                          const Spacer(),
                      
                           Column(
                            children: [
                              const Text("Gram",style: TextStyle(
                                fontSize: 20
                              ),),
                              Row(
                                children: [
                                  IconButton(onPressed: (){
                                    setState(() {
                                      if(gmcount!=0){
                                       gmcount = gmcount-1;}
                                    });
                                  }, icon: const Icon(Icons.remove_circle_outline,
                                  size: 35,),
                                  ),
                                   Text("$gmcount",style:const TextStyle(
                                fontSize: 20
                              ),),
                                   IconButton(onPressed: (){
                                    setState(() {
                                      gmcount=gmcount+1;
                                    });
                              }, icon: const Icon(Icons.add_circle_outline,
                              size: 35,
                              ))
                                ],
                                
                              ),
                      
                            ],
                          ),
                        ],
                        ),
                      ),
                       ])
                      ),
                      const SizedBox(height: 10,),
                     
                      Container(
                    decoration:const  BoxDecoration(
                    color: Colors.white,
                    boxShadow:[BoxShadow(color:Color.fromARGB(255, 156, 143, 143),
                    blurRadius: 3),  
                    ]),
            
                        child:  Padding(
                           padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 10),
                          child:  Row(
                           
                            children: [
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                 Padding(
                                   padding: EdgeInsets.only(bottom: 10),
                                   child: Text("Price Summary",style: TextStyle(
                                    fontWeight: FontWeight.bold
                                   ),),
                                 ),
                                 Text("Whole product price"),
                                 Text("Whole product required"),
                                 Text("Wastege"),
                                 Text("Final weight"),
                                 Text("Delivery charge :"),
                                 Padding(
                                   padding: EdgeInsets.only(top: 20,),
                                   child: Text("Final price",style: TextStyle(
                                    fontWeight: FontWeight.bold
                                   ),),
                                 ),
                                 
                                ],
                              ),
                              
                             const Spacer(),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Text("   "),
                                  ),
                                  
                                  Text("$singleproprice /kg"),
                                  Text("$pricereq kg"),
                                 const Text(".27 kg"),
                                 const Text(".57 kg"),
                                 const Text(".FREE",style: TextStyle(
                                    color: Colors.green
                                  ),),
                                   Padding(
                                   padding: const EdgeInsets.only(top: 20,bottom: 10),
                                   child:  Text("$pricereq x $singleproprice = $total",
                                   style: const TextStyle(
                                    fontWeight: FontWeight.bold
                                   ),),
                                 ),
                        
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                
                      const SizedBox(height: 10,),
                
                      Container(
                    decoration:const  BoxDecoration(
                    color: Colors.white,
                    boxShadow:[BoxShadow(color:Color.fromARGB(255, 156, 143, 143),
                    blurRadius: 3),  
                    ]),
                        child:  Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 10 ),
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            const Padding(
                               padding: EdgeInsets.only(bottom: 20),
                               child: Text("Description",style: TextStyle(fontWeight: FontWeight.bold),),
                             ),
                             Text(singlprodesc)
                            ],
                          ),
                        ),
                      ),
                       SizedBox(height: 470,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding:  EdgeInsets.only(left: 20,bottom: 20,top: 30),
                            child:  Text("Similiar Products"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            // ignore: sized_box_for_whitespace
                            child: Container(
                              height: 400,
                              child:const SingleProductgrids()),
                          ),
                          
                        ],
                      )),
                      TextButton(onPressed: (){

                      }, 
                      child: const Text("View more",
                      style: TextStyle(color: Colors.blue),))
                
                
                    ],
                  ),
                ),
              ),
            ),
            Bottombar(iccolor: iccolor)
          ],
        ),
      ),
    );
  }
  void singleproUser() async{
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
         Singleproname = result.data.name;
         singleproimg = result.data.images[0];
         singleproprice = result.data.wholePrice.toString();
         singlprodesc = result.data.description;
      }
     }
  }
}

