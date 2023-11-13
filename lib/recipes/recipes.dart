import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meatshopproj/api.dart';
import 'package:meatshopproj/recipes/recipesgrid.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../modals/recipesmodal.dart';
import 'singlerecipes.dart';

class Recipes extends StatefulWidget {
  const Recipes({super.key});

  @override
  State<Recipes> createState() => _RecipesState();
}
ValueNotifier <List<Recipedata>> recipenotifier = ValueNotifier([]);
class _RecipesState extends State<Recipes> {
  var uid = "";
  @override
  Widget build(BuildContext context) {
    recipeUser();
    getval();
    return  Scaffold
    (
      appBar: AppBar(
        title: const Text("Recipes"),
        actions: [
          IconButton(onPressed: (){

          }, 
          icon: const Icon(Icons.search)),
          IconButton(onPressed: (){

          }, 
          icon: const Icon(Icons.favorite_sharp))
        ],
      ),
      body:  SafeArea(
        child: Container(
          height: double.infinity,
          color: const Color.fromARGB(255, 239, 236, 236),
          child:  Padding(
            padding: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: ValueListenableBuilder(
      valueListenable: recipenotifier, 
      builder:(context, List<Recipedata> recipe, child) {
          return  GridView.builder(
                    itemCount: recipe.length,
                    gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                      // childAspectRatio: (itemHeight/itemWidth),
                      crossAxisCount: 2,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2), 
                      itemBuilder: (context, index) {
                        final recipes = recipenotifier.value[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(context,
                             MaterialPageRoute(builder: (context){
                              return  SingleRecipes(
                                id: recipes.id,
                              );
                             }));
                          },
                          child: Container(
                            color: Colors.white,
                            
                            // decoration: BoxDecoration(
                            //   image: DecorationImage(image: AssetImage(
                            //     gridimg[index]
                            //   ),fit: BoxFit.fill)
                            // ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                              child: Column(
                                
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                 SizedBox(
                                  height: 130,
                                  width: 200,
                                  child: Image.network(recipes.image.toString(),
                                  fit: BoxFit.fill,)),
                                   Text(recipes.name.toString(),maxLines: 1,),
                                 
                                   Text("Cooking:${recipes.time.toString()}",
                                   style: TextStyle(
                                    fontSize: 12
                                   ),)
                                ],
                              ),
                            ),
                          ),
                        );
                      }, );
        
      },),
          ),
        )),
    );
  }
  void recipeUser()async{
    //  user_id = uid;
    const key = "koFCpCMzm8hhn9ULj0BnUzZkpqM3rg9Mqdii3FwPRjBwZFQWriIJYgB5jjOhNIyasSl4RrmCFLW3tHDRtI39viQbYEP7nEkYvba2wstThYWjvkndZq0zaXJaWjuqeZo8vR3MMHa6OhBDKsFPmWOlIM4H1TgB1fudQndGKzUPg8YhAoaAoCxZ562zjbQdPO73ZkwyPV7iOIkyH11ZLAN42a5dgLH22Rs1VasEWBKdfkqMLPfDbLQpF9Ofqah4fqwc";
    
    final formdata = FormData.fromMap({
      'user_id':uid,
      'key':key

    });
    final result = await Api().recipesUserApi(formdata);
    if (result != null){
      if(result.status == "success"){
        if(result.data!= null){
          print("dfgdfgd$uid");
          setState(() {
             recipenotifier.value.clear();
          recipenotifier.value.addAll(result.data!);
          });
         
        }
      }
    }
  }
    void getval() async{
    SharedPreferences share = await SharedPreferences.getInstance();
       uid = share.getString("userid")!;
  }
}