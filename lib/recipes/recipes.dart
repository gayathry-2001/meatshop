import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meatshopproj/api.dart';
import 'package:meatshopproj/recipes/recipesgrid.dart';

import '../modals/recipesmodal.dart';

class Recipes extends StatefulWidget {
  const Recipes({super.key});

  @override
  State<Recipes> createState() => _RecipesState();
}
ValueNotifier <List<Recipedata>> recipenotifier = ValueNotifier([]);
class _RecipesState extends State<Recipes> {
  @override
  Widget build(BuildContext context) {
    recipeUser();
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
          child: const Padding(
            padding: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Recipesgrid(),
          ),
        )),
    );
  }
  void recipeUser()async{
    const user_id = "565";
    const key = "koFCpCMzm8hhn9ULj0BnUzZkpqM3rg9Mqdii3FwPRjBwZFQWriIJYgB5jjOhNIyasSl4RrmCFLW3tHDRtI39viQbYEP7nEkYvba2wstThYWjvkndZq0zaXJaWjuqeZo8vR3MMHa6OhBDKsFPmWOlIM4H1TgB1fudQndGKzUPg8YhAoaAoCxZ562zjbQdPO73ZkwyPV7iOIkyH11ZLAN42a5dgLH22Rs1VasEWBKdfkqMLPfDbLQpF9Ofqah4fqwc";
    
    final formdata = FormData.fromMap({
      'user_id':user_id,
      'key':key

    });
    final result = await Api().recipesUserApi(formdata);
    if (result != null){
      if(result.status == "success"){
        if(result.data!= null){
          recipenotifier.value.clear();
          recipenotifier.value.addAll(result.data!);
        }
      }
    }
  }
}