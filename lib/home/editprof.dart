import 'package:flutter/material.dart';

class Editprof extends StatefulWidget {
  const Editprof({super.key});

  @override
  State<Editprof> createState() => _EditprofState();
}

class _EditprofState extends State<Editprof> {
  final namecntrl = TextEditingController();
  final mobcntrl = TextEditingController();
  final mailcntrl = TextEditingController();
  final citycntrl = TextEditingController();
  final locationcntrl = TextEditingController();
  final flatcntrl = TextEditingController();
  final pincntrl = TextEditingController();
  final statecntrl = TextEditingController();
  final landmarkcntrl = TextEditingController();
  

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
          padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
          child: ListView(
            children: [
              Container(
                height: 200,
                color: Colors.white,
                child:  Padding(
                  padding: const EdgeInsets.only(right: 20,left: 20,top: 10,bottom: 10),
                  child: Column(
                    children: [
                      TextField(
                        controller: namecntrl,
                        decoration: const InputDecoration(
                          hintText: "Name"
                        ),
                      ),
                       TextField(
                        controller: mobcntrl,
                        decoration: const InputDecoration(
                          hintText: "Mobile Number"
                        ),
                      ),
                       TextField(
                        controller: mailcntrl,
                        decoration: const InputDecoration(
                          hintText: "Email"
                        ),
                      )
                    ],
                          
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              Container(
                height: 300,
                decoration: const BoxDecoration(
                  color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Column(
                    children: [
                       TextField(
                        controller: citycntrl,
                        decoration: const InputDecoration(
                          hintText: "City"
                        ),
                      ),
                       TextField(
                        controller: locationcntrl,
                        decoration: const InputDecoration(
                          hintText: "Locality,area or street"
                        ),
                      ),
                       TextField(
                        controller: mailcntrl,
                        decoration: const InputDecoration(
                          hintText: "Flat no, Building name"
                        ),
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: TextField(  

                            // textInputAction:TextInputType., 
                            controller: locationcntrl,
                            decoration: const InputDecoration(
                            
                            hintText: "Pincode"
                                                ),
                                              ),
                          ),
                          const Spacer(),
                       Expanded(
                         child: TextField(
                          controller: mailcntrl,
                          decoration: const InputDecoration(
                            hintText: "State"
                          ),
                                           ),
                       ),
                        ],
                      ),
                      Expanded(
                        child: TextField(
                          controller: landmarkcntrl,
                          decoration: const InputDecoration(
                            hintText: "Landmark(optional)"
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 25, 98, 171)
                ),
                onPressed: (){
                 
                },
                 child: const Text("UPDATE")),
              )
            ],
          ),
        ),
      )),
    );
  }
}