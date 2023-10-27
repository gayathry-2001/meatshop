import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meatshopproj/api.dart';

class SingleRecipes extends StatefulWidget {
  final id;
  const SingleRecipes({super.key, this.id});

  @override
  State<SingleRecipes> createState() => _SingleRecipesState();
}

class _SingleRecipesState extends State<SingleRecipes> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();





    setState(() {
       singleReciUser();
    });
//  singleReciUser();
   
  }
  String? singlereciname;
  String? singlerecical ;
   String? singlerecitym;
   String? singlereciingre;
   String? singlerecicook;
  String? singlereciimg;
  @override
  Widget build(BuildContext context) {
   
    return  Scaffold
    (
      appBar: AppBar(title: Text(singlereciname.toString())),
      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 270,
                width: double.infinity,
                foregroundDecoration:const BoxDecoration(
                gradient: LinearGradient(
                  
                  colors: [Colors.transparent, Colors.transparent, Color.fromARGB(243, 0, 0, 0),  Color.fromARGB(255, 0, 0, 0)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0, 0.6, 10,10],
                ),
              ),

                child: Image.network(singlereciimg.toString(),fit: BoxFit.fill,
                ),
                
              ),
           
          Positioned(
            child: 
              Padding(
                padding:  const EdgeInsets.only(left: 30,top: 200),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(singlereciname.toString(),style:const TextStyle(color: Colors.white,
                    fontSize: 25,
                    shadows: [Shadow(color: Color.fromARGB(255, 0, 0, 0),blurRadius: 50),]),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        
                        children: [
                          
                         const Icon(Icons.timer_outlined,color: Colors.white,
                         shadows: [Shadow(color: Color.fromARGB(255, 0, 0, 0),blurRadius: 30),]),
                           Text(singlerecitym.toString(),style: 
                           const TextStyle(color: Colors.white,
                           fontSize: 16,
                           shadows: [Shadow(color: Color.fromARGB(255, 0, 0, 0),blurRadius: 30),]),),
                          
                            const Padding(
                              padding:  EdgeInsets.only(left: 30),
                              child:  Icon(Icons.local_fire_department_outlined,color: Colors.white,
                              shadows: [Shadow(color: Color.fromARGB(255, 0, 0, 0),blurRadius: 30),]),
                            ),
                            Text(singlerecical.toString(),
                            style: const TextStyle(color: Colors.white,
                            fontSize: 16,
                            shadows: [Shadow(color: Color.fromARGB(255, 0, 0, 0),blurRadius: 30),]),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            
          ), ],
          ),
           
                  Expanded(
                    child: ListView(
                      children: [
                       
                     
                      Padding(
                     padding:const EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
                      
                      
                       
                         child: Container(
                          padding: EdgeInsets.all(10),
                           decoration:const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(255, 255, 255, 255),
                    boxShadow: [BoxShadow(color:Color.fromARGB(255, 136, 177, 218),
                    blurRadius: 10)]
                  ),
                          
                          child: Column(
                            children: [
                               const Padding(
                          padding: EdgeInsets.only(top: 30,bottom: 20,left: 20),
                          child: Text("Ingredients",style: 
                          TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 18),),
                        ),
                              Text(singlereciingre.toString()),
                            ],
                          )),
                         
                       
                      
                    ),
                    
                    Padding(
                      padding:const EdgeInsets.only(top: 20,bottom: 20,left: 20,right: 20),
                      child: Container(
                        decoration:const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 255, 255, 255),
                      boxShadow: [BoxShadow(color:Color.fromARGB(255, 136, 177, 218),
                      blurRadius: 10)]
                                      ),
                        child: Padding(
                        padding: const EdgeInsets.only(top: 0,bottom: 20,left: 20,right: 20),
                          child:  Column(
                            children: [
                              const Padding(
                        padding: EdgeInsets.only(top: 30,bottom: 20,left: 0),
                        child: Text("How to cook",style: 
                        TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      ),
                              Text(singlerecicook.toString()),
                            ],
                          ),
                        ),
                      ),
                    ), ],
                    ),
                  ),
        ],
      )),
    );
  }
  void singleReciUser() async{
    const recipeid = "13";
    const userid = "565";
    const key = "koFCpCMzm8hhn9ULj0BnUzZkpqM3rg9Mqdii3FwPRjBwZFQWriIJYgB5jjOhNIyasSl4RrmCFLW3tHDRtI39viQbYEP7nEkYvba2wstThYWjvkndZq0zaXJaWjuqeZo8vR3MMHa6OhBDKsFPmWOlIM4H1TgB1fudQndGKzUPg8YhAoaAoCxZ562zjbQdPO73ZkwyPV7iOIkyH11ZLAN42a5dgLH22Rs1VasEWBKdfkqMLPfDbLQpF9Ofqah4fqwc";
    
    final formdata =FormData.fromMap(
      {
       'recipe_id': widget.id,
       'user_id':userid,
       'key':key
      }
    );
    final result = await Api().singlereciUserApi(formdata);
    if (result != null){
      if(result.status == "success"){
        if(result.data != null){
          setState(() {
             singlereciname = result.data?.recipie!.name!;
          singlereciingre = result.data?.recipie!.ingredients!;
          singlerecicook = result.data?.recipie!.description!;
          singlerecitym = result.data?.recipie!.time!;
          singlerecical = result.data?.recipie!.cals!;
          singlereciimg = result.data?.recipie!.image!;
          });
         
        }
      }
    }
  }
}