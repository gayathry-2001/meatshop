import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

import '../api.dart';

class Editprof extends StatefulWidget {
  const Editprof({super.key});

  @override
  State<Editprof> createState() => _EditprofState();
}

class _EditprofState extends State<Editprof> {
  final fnamecntrl = TextEditingController();
  final mobcntrl = TextEditingController();
  final mailcntrl = TextEditingController();
  final lnamecntrl = TextEditingController();
  // final locationcntrl = TextEditingController();
  // final flatcntrl = TextEditingController();
  // final pincntrl = TextEditingController();
  // final statecntrl = TextEditingController();
  // final landmarkcntrl = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      appBar: AppBar(title:const Text("Edit profile"),),
      body:  SafeArea(child: 
      Container(
        decoration: const BoxDecoration(
          color:  Color.fromARGB(255, 239, 236, 236)
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 0),
          child: ListView(
            children: [
              Padding(
                padding:const  EdgeInsets.only(top: 150),
                child: Container(
                  height: 350,
                   decoration:const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(255, 255, 255, 255),
                    boxShadow: [BoxShadow(color:Color.fromARGB(255, 52, 116, 179),
                    blurRadius: 20)]
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.only(right: 20,left: 20,top: 10,bottom: 10),
                    child: ListView(
                      children: [
                        TextField(
                          controller: fnamecntrl,
                          decoration: const InputDecoration(
                            hintText: "First name"
                          ),
                        ),
                         TextField(
                          controller: lnamecntrl,
                          decoration: const InputDecoration(
                            hintText: "Last name"
                          ),
                        ),
                         TextField(
                          controller: mailcntrl,
                          decoration: const InputDecoration(
                            hintText: "Email"
                          ),
                        ),
                         TextField(
                          controller: mobcntrl,
                          decoration: const InputDecoration(
                            hintText: "Mobile"
                          ),
                        ),
                         Padding(
                padding: const EdgeInsets.only(top: 40),
                child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 25, 98, 171)
                ),
                onPressed: (){
                 editProUser();
                },
                 child: const Text("UPDATE")),
              )
                      ],
                            
                    ),
                  ),
                ),
              ),
              // const SizedBox(height: 30,),
              // Container(
              //   height: 300,
              //   decoration: const BoxDecoration(
              //     color: Colors.white
              //   ),
              //   child: Padding(
              //     padding: const EdgeInsets.only(left: 20,right: 20),
              //     child: Column(
              //       children: [
              //          TextField(
              //           controller: citycntrl,
              //           decoration: const InputDecoration(
              //             hintText: "City"
              //           ),
              //         ),
              //          TextField(
              //           controller: locationcntrl,
              //           decoration: const InputDecoration(
              //             hintText: "Locality,area or street"
              //           ),
              //         ),
              //          TextField(
              //           controller: mailcntrl,
              //           decoration: const InputDecoration(
              //             hintText: "Flat no, Building name"
              //           ),
              //         ),
              //         Row(
              //           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Expanded(
              //               child: TextField(  

              //               // textInputAction:TextInputType., 
              //               controller: locationcntrl,
              //               decoration: const InputDecoration(
                            
              //               hintText: "Pincode"
              //                                   ),
              //                                 ),
              //             ),
              //             const Spacer(),
              //          Expanded(
              //            child: TextField(
              //             controller: mailcntrl,
              //             decoration: const InputDecoration(
              //               hintText: "State"
              //             ),
              //                              ),
              //          ),
              //           ],
              //         ),
              //         Expanded(
              //           child: TextField(
              //             controller: landmarkcntrl,
              //             decoration: const InputDecoration(
              //               hintText: "Landmark(optional)"
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
             
            ],
          ),
        ),
      )),
    );
  }
  Future<void> editProUser() async {
    final fname = fnamecntrl.text;
    final lname = lnamecntrl.text;
    final mail = mailcntrl.text;
    final mob = mobcntrl.text;
    const userid = "565";
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

    else{
      final formdata = FormData.fromMap({
     'user_id': userid,
     'firstname':mail,
     'lastname':lname,
     'email': mail,
     'telephone': mob,
     'key': key
     });
     final result = await Api().EditproUserApi(formdata);
    
      if (result != null) {
        if (result.status == "success") {
        
          showSuccessmessage(result.message!);
          
         
        } 
        else{
          showErrormessage(result.message!);
        }





    }
  }}
  
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
      dismissable: true,
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
      dismissable: true,
    ).show(context);
  }


}  
  