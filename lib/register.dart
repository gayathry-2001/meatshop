import 'package:flutter/material.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  final fnamecontrol = TextEditingController();
  final lnamecontrol = TextEditingController();
  final mailcontrol = TextEditingController();
  final mobcontrol = TextEditingController();
  final pswdcontrol = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Register"),),
     
      body:  SafeArea(child: Padding(
        padding: const EdgeInsets.only(top: 20),
           child: Column(
             children: [
               Expanded(
                 child: SizedBox(
                  height: double.infinity,
                   child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: TextField(
                            controller: fnamecontrol,
                            decoration: const InputDecoration(
                            hintText: "First name"                            
                            ),
                            ),
                        ),
                          Padding(
                           padding: const EdgeInsets.only(left: 20,right: 20),
                            child: TextField(
                              controller: lnamecontrol,
                              decoration: const InputDecoration(
                              hintText: "Last name"                            
                             ),
                            ),
                          ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: TextField(
                        controller: mailcontrol,
                        decoration: const InputDecoration(
                        hintText: "E mail"                            
                        ),
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: TextField(
                        controller: mobcontrol,
                        decoration: const InputDecoration(
                        hintText: "Mobile Number"                            
                        ),
                        ),
                    ),
                       const SizedBox(
                      height: 50,
                        child:  Divider(thickness: 1,)),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: TextField(
                        controller: pswdcontrol,
                        decoration: const InputDecoration(
                        hintText: "Password", 
                        suffixIcon: Icon(Icons.remove_red_eye_rounded)                          
                        ),
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: TextField(
                        controller: pswdcontrol,
                        decoration: const InputDecoration(
                        hintText: "Confirm password",   
                        suffixIcon: Icon(Icons.remove_red_eye_rounded)                         
                        ),
                        ),
                    ),
              
                      ],
                    ),
                 ),
               ),


               SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width,
               child: ElevatedButton(onPressed: (){
               const snack =   SnackBar(
                  content:  Text("Regsitered Successfully")
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snack);
                
                }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 244, 130, 54)
                ),
                child: const Text("Register"),
                )
               )
             ],
           ),
            
            
      
      
      
         
      )),
    );
  }
}