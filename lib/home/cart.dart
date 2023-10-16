import 'package:flutter/material.dart';
import 'package:meatshopproj/lists.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("My cart"),
      ),
      body: SafeArea(child: 
      Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 238, 235, 235)
        ),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ListView.separated(
                  itemCount: gridimg.length,
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 1,
                  ),            
                  itemBuilder: ((context, index) {    
                  return Container(height: 120,
                    color: Colors.white,
                    child: Row(
                      children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 20.0,right: 20),
                           child: SizedBox(
                            height:100,
                            width: 100,
                             child: Image.asset(gridimg[index],fit: BoxFit.cover,
                             ),
                           ),
                         ),

                         const Text("sdfsdfsdffsdfssdfsf"),
                         const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             ElevatedButton(
                              style:const  ButtonStyle(
                                foregroundColor:  MaterialStatePropertyAll(Colors.black),
                                backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 208, 206, 206))
                              ),
                              onPressed: (){
                               
                             }, child: const Text("Remove",style: TextStyle(
                              fontSize: 12
                             ),)),
                           const Text("Qty:1.25 kg",style: TextStyle(
                              fontSize: 12))
                            ],
                                                   ),
                          )

                        
                      ]
                    ),
                  );
                
                  
                  
                })),
              ),
            ),

          //  const  Spacer(),
           Container(
            decoration: const BoxDecoration(
              color: Colors.white
            ),
            child:  Column(
              children: [
               const Padding(
                  padding: EdgeInsets.only(top: 20,bottom: 20),
                  child: Row(
                    
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                        
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                          Text("Final Price"),
                          Text("Coupon discount :"),
                          Text("Delivery charge :"),
                          Text("Sub Total",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14
                          ),)
                          ],
                        ),
                      ),
                      Spacer(),
                       Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Column(
                        
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            
                          Text("0.76 x 680 = 446"),
                          Text("0"),
                          Text("FREE"),
                          Text("Rs. 468.00")
                          ],
                        ),
                      )
                      
                
                    ],
                  ),
                ),
               const  Divider(thickness: 2,),
                const Padding(
                   padding: EdgeInsets.only(bottom:20,left: 20 ),
                   child: Row(
                     children: [
                      Icon(Icons.sell,color: Colors.grey,),
                       Text("ADD PROMO CODE",style: TextStyle(
                        color: Color.fromARGB(255, 102, 101, 101),
                       ),),
                     ],
                   ),
                 ),
                 SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
               child: ElevatedButton(onPressed: (){
              //  const snack =   SnackBar(
              //     content:  Text("Regsitered Successfully")
              //     );
              //     ScaffoldMessenger.of(context).showSnackBar(snack);
             
                
                }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 244, 130, 54)
                ),
                child: const Text("Register"),
                )
               )
              ],
            ),
           )
          ],
        ),
      )),
    );
  }
}