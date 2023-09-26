import 'package:flutter/material.dart';

import 'Bottombar.dart';
import 'singleproductgrid.dart';

class Singleproduct extends StatefulWidget {
  const Singleproduct({super.key});

  @override
  State<Singleproduct> createState() => _SingleproductState();
}

class _SingleproductState extends State<Singleproduct> {
  var dropdownvalue = "Select";
  var cuts = [   
     
    'Half',
    'Full',
    'Quarter',
    
  ];
   var iccolor= const Color.fromARGB(255, 246, 242, 242); 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      appBar: AppBar(
        title: const Text("Fish name"),
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
                        decoration: const BoxDecoration(
                          color: Colors.white10,
                          image: DecorationImage(image: AssetImage("assets/images/fishimg.jpg"),
                          fit: BoxFit.fill)
                        ),),
                    
                 Container(
                  height: 60,
                  decoration:const  BoxDecoration(
                    color: Colors.white,
                    boxShadow:[BoxShadow(color:Color.fromARGB(255, 156, 143, 143),
                    blurRadius: 3),  
                    ]),
                   child:const Padding(
                     padding:  EdgeInsets.only(top: 10,left: 20,right: 20),
                     child:  Text("Seer fish/Surmal/Neymeen/Vanjaram/King fish/Seer fish/Surmal/Neymeen/Vanjaram/King fish",
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
                         child:  Row(
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
                     const SizedBox(height: 10,),
                     Container(
                    decoration:const  BoxDecoration(
                    color: Colors.white,
                    boxShadow:[BoxShadow(color:Color.fromARGB(255, 156, 143, 143),
                    blurRadius: 3),  
                    ]),
                       child: Column(
                         children: [
                            const Padding(
                             padding: EdgeInsets.only(left: 20,right: 20,bottom: 20,top: 10),
                             child:  Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Request your quantity"),
                                Row(
                                  children: [
                                    Text("whole: 180/500gm"),
                                    Spacer(),
                                    Text(" \$360")
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
                      
                                  }, icon: const Icon(Icons.remove_circle_outline,
                                  size: 35,),
                                  ),
                                  const Text("2",style: TextStyle(
                                fontSize: 20
                              ),),
                                   IconButton(onPressed: (){
                      
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
                      
                                  }, icon: const Icon(Icons.remove_circle_outline,
                                  size: 35,),
                                  ),
                                  const Text("100",style: TextStyle(
                                fontSize: 20
                              ),),
                                   IconButton(onPressed: (){
                      
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
            
                        child: const Padding(
                           padding:  EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 10),
                          child:  Row(
                           
                            children: [
                              Column(
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
                              Spacer(),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Text("   "),
                                  ),
                                  Text("580/kg"),
                                  Text("0.76 kg"),
                                  Text(".27 kg"),
                                  Text(".57 kg"),
                                  Text(".FREE",style: TextStyle(
                                    color: Colors.green
                                  ),),
                                  Padding(
                                   padding: EdgeInsets.only(top: 20,bottom: 10),
                                   child: Text("0.769 x 580 = 446 ",style: TextStyle(
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
                        child: const Padding(
                          padding:  EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 10 ),
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             Padding(
                               padding: EdgeInsets.only(bottom: 20),
                               child: Text("Description",style: TextStyle(fontWeight: FontWeight.bold),),
                             ),
                             Text("Seer fish- Neymeen or in some areas called ayikkora; king of fishes,  is the  favourite dish for malayalees because great  taste and health benefits.Seer fish- Neymeen or in some areas called ayikkora; king of fishes,  is the  favourite dish for malayalees because great  taste and health benefits.Seer fish- Neymeen or in some areas called ayikkora; king of fishes,  is the  favourite dish for malayalees because great  taste and health benefits.")
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
}

