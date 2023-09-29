import 'package:flutter/material.dart';

class SingleRecipes extends StatefulWidget {
  const SingleRecipes({super.key});

  @override
  State<SingleRecipes> createState() => _SingleRecipesState();
}

class _SingleRecipesState extends State<SingleRecipes> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold
    (
      appBar: AppBar(title:const Text("Item name")),
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                // color: Colors.red,
                // image: DecorationImage(image: AssetImage(" assets/images/gridfish.jpg"),
                // fit: BoxFit.fill)
              ),
              child: Image.asset("assets/images/images.jpg",fit: BoxFit.fill,),
              
            ),
            Stack(
              children: [
                Container(
                  height: 80,
                  decoration: const BoxDecoration(
                    boxShadow: [BoxShadow(color: Color.fromARGB(53, 60, 58, 58),
                   ),]
                    
                  ),
                child: const Padding(
                  padding:  EdgeInsets.only(left: 30,top: 10),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("data",style: TextStyle(color: Colors.white,
                      fontSize: 25),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Row(
                          
                          children: [
                             Text("data",style: TextStyle(color: Colors.white,
                             fontSize: 18),),
                             
                              Padding(
                                padding: EdgeInsets.only(left: 30),
                                child: Text("data",style: TextStyle(color: Colors.white,
                                fontSize: 18),),
                              ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                              ),
              ],
            ),
             
                    const Padding(
                      padding: EdgeInsets.only(top: 30,bottom: 20,left: 30),
                      child: Text("Ingredients",style: 
                      TextStyle(fontWeight: FontWeight.bold),),
                    ),
                     Padding(
                     padding:const EdgeInsets.only(top: 0,bottom: 20,left: 30),
                      child: SizedBox(
                        height: 80,
                        child: ListView(children:const [
                          Text("data"),
                          Text("data"),Text("data"),Text("data"),Text("data"),
                        ],),
                      )
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 30,bottom: 20,left: 30),
                      child: Text("How to cook",style: 
                      TextStyle(fontWeight: FontWeight.bold),),
                    ),
                   const Padding(
                    padding: EdgeInsets.only(top: 0,bottom: 20,left: 30),
                      child:  Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                    ),
          ],
        ),
      )),
    );
  }
}