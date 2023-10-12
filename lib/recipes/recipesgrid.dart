import 'package:flutter/material.dart';
import 'package:meatshopproj/recipes/recipes.dart';
// import 'package:meatshopproj/recipes/recipes.dart';
import 'package:meatshopproj/recipes/singlerecipes.dart';


import '../lists.dart';
import '../modals/recipesmodal.dart';

class Recipesgrid extends StatelessWidget {
  const Recipesgrid({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: recipenotifier, 
      builder:(context, List<Recipedata> recipe, child) {
          return  GridView.builder(
                    itemCount: recipe.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      
                      crossAxisCount: 2,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2), 
                      itemBuilder: (context, index) {
                        final recipes = recipenotifier.value[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(context,
                             MaterialPageRoute(builder: (context){
                              return const SingleRecipes();
                             }));
                          },
                          child: Container(
                            color: Colors.white,
                            height: 20,
                            width: 20,
                            // decoration: BoxDecoration(
                            //   image: DecorationImage(image: AssetImage(
                            //     gridimg[index]
                            //   ),fit: BoxFit.fill)
                            // ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                              child: Column(
                                children: [
                                  Image.asset(recipes.image.toString()),
                                   Text(recipes.name.toString())
                                ],
                              ),
                            ),
                          ),
                        );
                      }, );
        
      },);
   
  }
}