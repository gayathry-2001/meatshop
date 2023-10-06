

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

import 'api.dart';

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
              //  const snack =   SnackBar(
              //     content:  Text("Regsitered Successfully")
              //     );
              //     ScaffoldMessenger.of(context).showSnackBar(snack);
              registerUser();
                
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
   void registerUser() async{
    final fname = fnamecontrol.text;
    final lname = lnamecontrol.text;
    final mail = mailcontrol.text;
    final mob = mobcontrol.text;
    final pswd = pswdcontrol.text;
    const type = 0;
    const ref = 0;
    const key = "koFCpCMzm8hhn9ULj0BnUzZkpqM3rg9Mqdii3FwPRjBwZFQWriIJYgB5jjOhNIyasSl4RrmCFLW3tHDRtI39viQbYEP7nEkYvba2wstThYWjvkndZq0zaXJaWjuqeZo8vR3MMHa6OhBDKsFPmWOlIM4H1TgB1fudQndGKzUPg8YhAoaAoCxZ562zjbQdPO73ZkwyPV7iOIkyH11ZLAN42a5dgLH22Rs1VasEWBKdfkqMLPfDbLQpF9Ofqah4fqwc";

    if(fname.isEmpty){
     showErrormessage("Enter first name");
    }
    else if(lname.isEmpty){
     showErrormessage("Enter last name");
    }
    else if(mail.isEmpty){
     showErrormessage("Enter mail-id");
    }
    else if(mob.isEmpty){
     showErrormessage("Enter Mobile");
    }
    else if(pswd.isEmpty){
     showErrormessage("Enter password");
    }
    else {
      final formData = FormData.fromMap(
        {
          'firstname': fname,
          'lastname' : lname,
          'email':mail,
          'telephone':mob,
          'password':pswd,
          'type':type,
          'referal_code': ref,
          'key':key
        }
      );
      final result = await Api().registerUserApi(formData);
      if(result != null){

        
        if(result.status == "success"){
          showSuccessmessage(result.message);
        }
       else{
            showErrormessage(result.message);
       }
         
        
      }

      }
      
    }


   
   void showErrormessage(msg){
    MotionToast.error(
      title: const Text(
        'Error',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      description: Text(msg),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: true,
    ).show(context);

   }

   void showSuccessmessage(msg){
    MotionToast.success(
      title: const Text(
        'Sucess',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      description: Text(msg),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: true,
    ).show(context);

   }
}