import 'package:flutter/material.dart';
import 'package:meatshopproj/recipes/recipesgrid.dart';

class Recipes extends StatefulWidget {
  const Recipes({super.key});

  @override
  State<Recipes> createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  @override
  Widget build(BuildContext context) {
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
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20,right: 20,top: 20),
          child: Recipesgrid(),
        )),
    );
  }
}