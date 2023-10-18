import 'package:flutter/material.dart';
import 'package:meatshopproj/recipes/recipes.dart';
import 'package:meatshopproj/recipes/singlerecipes.dart';
import '../modals/recipesmodal.dart';

class Recipesgrid extends StatelessWidget {
  const Recipesgrid({super.key});

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;

    // /*24 is for notification bar on Android*/
    // final double itemHeight = (size.height - kToolbarHeight) / 2.5;
    // final double itemWidth = size.width*1.2;
    return ValueListenableBuilder(
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
                              return const SingleRecipes();
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
        
      },);
   
  }
}