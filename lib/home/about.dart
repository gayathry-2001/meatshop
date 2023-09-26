import 'package:flutter/material.dart';

class About extends StatefulWidget {
 
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
 


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:  const Text ("About Company"),
      ),
      body:   SafeArea(
        child: Center(child: Container
        (
          color: const Color.fromARGB(155, 217, 211, 211),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              color: Colors.white,
              child:  Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: ListView(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Center(child: Text("HEALTHYFISH.PVT LTD")),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30,bottom: 20),
                      child: Text("What is Healthyfish",style: 
                      TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                    Padding(
                      padding: EdgeInsets.only(top: 30,bottom: 20),
                      child: Text("Where does it come from?",style: 
                      TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                  ],
                ),
              ),
            ),
          ),
        ))),
    );
  }
}