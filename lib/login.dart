

import 'package:flutter/material.dart';
import 'package:meatshopproj/home/homepage.dart';
import 'package:meatshopproj/register.dart';

import 'home/bottomnavigation.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final namecontrol = TextEditingController();
  final passcontrol = TextEditingController();
  bool val = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Flexible(
                  flex: 2,
                  child: Container(  
                    decoration:const BoxDecoration(
                     color:  Color.fromARGB(255, 25, 98, 171),
                      image: DecorationImage(image: AssetImage("assets/images/logo-no-background.png"))
                     ),            
                        ),
                ),
      Flexible(
            flex: 4,
            child: Container(          
             decoration: const BoxDecoration(
             color: Color.fromARGB(253, 245, 243, 243)
              
              
             ),
            ),
      )
              ],
            ),
            Center(
            
              child: Padding(
                padding: const EdgeInsets.only(top: 150,left: 20,right: 20),
                child: Container(
                  height: 500,
                  width: double.infinity,
                  decoration:const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(255, 255, 255, 255),
                    boxShadow: [BoxShadow(color:Color.fromARGB(255, 52, 116, 179),
                    blurRadius: 20)]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
                    child: ListView(
                      children: [
                        TextField(
                          controller: namecontrol,
                          cursorColor: const Color.fromARGB(255, 25, 98, 171),
                          decoration: const InputDecoration(
                            hintText: "Name"
                          ),
                        ),
                        TextField(
                          controller: passcontrol,
                          cursorColor: const Color.fromARGB(255, 25, 98, 171),
                          decoration: const InputDecoration(
                            // enabledBorder: UnderlineInputBorder(
                            //   borderSide: BorderSide(color: Color.fromARGB(246, 224, 8, 8))
                            // ),
                            // focusedBorder: UnderlineInputBorder(
                            //   borderSide: BorderSide(color:  Color.fromARGB(255, 25, 98, 171),)
                            // ),
                            hintText: "Password", 
                            suffixIcon: Icon(Icons.remove_red_eye,),
                            counterText: "forgot password?",
                            counterStyle: TextStyle(
                              color:  Color.fromARGB(255, 25, 98, 171),
                            )                           
                          ),
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: val,
                              checkColor: const Color.fromARGB(255, 243, 244, 246),
                              activeColor: const Color.fromARGB(255, 25, 98, 171),
                              onChanged: (value) {
                                setState(() {
                                  val = value!;
                                });
                              },
                            ),
                            const Text("Remember me",style: TextStyle(
                             color: Colors.grey
                            ),)
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20,bottom: 20),
                          child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                      foregroundColor: Colors.white, 
                                      backgroundColor: const Color.fromARGB(255, 25, 98, 171),
                                      shadowColor: const Color.fromARGB(255, 37, 96, 236),
                                      elevation: 3,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30.0)),
                                     
                                    ),
                                    onPressed: () {
                                      Navigator.push(context, 
                                      MaterialPageRoute(builder: (context)=>
                                      const AnimBottomnavigation()));
                                     
                                    },
                                    child: const Text('Login'),
                                  ),
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("New user?",style: 
                            TextStyle(color:  Color.fromARGB(255, 25, 98, 171),),),
                            TextButton(onPressed: (){
                               Navigator.push(context,MaterialPageRoute(builder: (context)=>
                                      const Registerpage()              
                                      ));

                            }, child: const Text("SIGNUP",style: TextStyle(color: Colors.blue),),)
                            
                          ],
                        ),
                        
                         const Padding(
                          padding: EdgeInsets.only(left: 70,right: 70),
                          child:  Divider(thickness: 1,)),
                        Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.facebook,
                                color: Colors.blue,
                                size: 35,),
                                Icon(Icons.mail_sharp,
                                color: Colors.blue,
                                size: 35,)
                              ],
                            ),
                            const Padding(
                          padding:  EdgeInsets.only(top:10.0),
                          child:   Text("OR"),
                        ),
                        TextButton(onPressed: (){
                               Navigator.push(context,MaterialPageRoute(builder: (context)=>
                                      const Registerpage()              
                                      ));

                   },
                    child: const Text("Guest login",
                    style: TextStyle(color:  Color.fromARGB(255, 25, 98, 171),),),)
                            
                          ],
                        ),
                        

 
                        
                       

                      ],
                    ),
                  ),
                ),
              ),
            )


          ],
        ),
        
        ),
    );
  }
}
