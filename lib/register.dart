import 'package:flutter/material.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  bool passwordVisible1=false; 
  bool passwordVisible2=false;
  final fnamecontrol = TextEditingController();
  final lnamecontrol = TextEditingController();
  final mailcontrol = TextEditingController();
  final mobcontrol = TextEditingController();
  final pswdcontrol = TextEditingController();
  final pswdcontrol1 = TextEditingController();
  @override
  void initState(){
    super.initState();
    passwordVisible1=true;
    passwordVisible2=true;
  }
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
                        obscureText: passwordVisible1,
                        controller: pswdcontrol,
                        decoration:  InputDecoration(
                        hintText: "Password", 
                        suffixIcon: IconButton(onPressed: (){
                         setState(() {
                           passwordVisible1 = !passwordVisible1;
                         });
                        },
                         icon: Icon(passwordVisible1 ? Icons.visibility:Icons.visibility_off))                          
                        ),
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: TextField(
                        obscureText: passwordVisible2,
                        controller: pswdcontrol1,
                        decoration:  InputDecoration(
                        hintText: "Confirm password",   
                        suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          passwordVisible2 = !passwordVisible2;
                        });
                        }, icon: Icon(passwordVisible2? Icons.visibility : Icons.visibility_off))                       
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