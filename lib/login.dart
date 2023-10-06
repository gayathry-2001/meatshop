
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meatshopproj/home/homepage.dart';
import 'package:meatshopproj/register.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'api.dart';
import 'home/bottomnavigation.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
   bool passwordVisible=false; 
  final mailcontrol = TextEditingController();
  final passcontrol = TextEditingController();
  bool val = false;
   @override
    void initState(){
      super.initState();
      passwordVisible=true;
    }    
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
                          controller: mailcontrol,
                          cursorColor: const Color.fromARGB(255, 25, 98, 171),
                          decoration: const InputDecoration(
                            hintText: "E mail"
                          ),
                        ),
                        TextField(
                          
                          obscureText: passwordVisible,
                          controller: passcontrol,
                          cursorColor: const Color.fromARGB(255, 25, 98, 171),
                          decoration:  InputDecoration(                                                 
                            hintText: "Password", 
                             suffixIcon: IconButton(
                      icon: Icon(passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(
                          () {
                            passwordVisible = !passwordVisible;
                          },
                        );
                      },
                      
                    ),
                            // counterText: "forgot password?",
                            counter: TextButton(onPressed: () {
                              
                            },
                            child:const Text("forgot password?"),),
                            counterStyle:const TextStyle(
                              color:  Color.fromARGB(255, 25, 98, 171),
                            )                           
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
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
                                    onPressed: () async{
                                     
                                     loginUser();
                                     next();

                                      // Navigator.push(context, 
                                      // MaterialPageRoute(builder: (context)=>
                                      // const AnimBottomnavigation()));
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
  void loginUser() async{
    final mail = mailcontrol.text;
    final passwrd = passcontrol.text;
    const key = "koFCpCMzm8hhn9ULj0BnUzZkpqM3rg9Mqdii3FwPRjBwZFQWriIJYgB5jjOhNIyasSl4RrmCFLW3tHDRtI39viQbYEP7nEkYvba2wstThYWjvkndZq0zaXJaWjuqeZo8vR3MMHa6OhBDKsFPmWOlIM4H1TgB1fudQndGKzUPg8YhAoaAoCxZ562zjbQdPO73ZkwyPV7iOIkyH11ZLAN42a5dgLH22Rs1VasEWBKdfkqMLPfDbLQpF9Ofqah4fqwc";
    if(mail.isEmpty){
    showErrormessage("Enter Email");
    }
    else if(passwrd.isEmpty){
    showErrormessage("Enter Password");
    }
    else{
     final formdata = FormData.fromMap({
     'email':mail,
     'password':passwrd,
     'key': key
     });
     final result = await Api().loginUserApi(formdata);

      if (result != null) {
        if (result.status == "success") {
        
          showSuccessmessage(result.message!);
          // Navigator.push(context, MaterialPageRoute(builder: (context){
          //   return const  HomeScreen();
          // }));
        } else {
         
          showErrormessage(result.message!);
        }
      }
       
     
    }
  }
  
  void showErrormessage(String message) {
    MotionToast.error(
      title: const Text(
        'Error',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      description: Text(message),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: false,
    ).show(context);

  }
  
  void showSuccessmessage(String message) {
     MotionToast.success(
      title: const Text(
        'Success',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      description: Text(message),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: false,
    ).show(context);
  }
  Future <void> next() async{
   return Future.delayed(Duration(seconds: 5),(){
    Navigator.push(context, MaterialPageRoute(builder: ((context) => AnimBottomnavigation())));
   });
  }

}
