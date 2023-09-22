import 'package:flutter/material.dart';

class Bottombar extends StatelessWidget {
  const Bottombar({
    super.key,
    required this.iccolor,
  });

  final Color iccolor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 55,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black
              ),
              color: const Color.fromARGB(255, 250, 250, 247),
            ),
            
          
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.favorite_sharp,
                color:iccolor ,
                shadows: const [Shadow(
                  color: Colors.red,
                  blurRadius: 10
                )]),
                
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Save",style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                )
              ],
            ), 
            ),
          ),
        

         Expanded(
          child: Container(
            height: 55,
             decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 93, 90, 90)
              ),
              color: const Color.fromARGB(255, 82, 74, 74),
            ),
            child:const Center(
              child:  Text("Add to cart",style: TextStyle(
                color: Colors.white,fontWeight: FontWeight.bold
              ),),
            ),
          ),
        ),
         Expanded(
          child: Container(
            height: 55,
             decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 250, 0, 0)
              ),
             color:const Color.fromARGB(255, 245, 79, 2),
            ),
             child:const Center(
              child:  Text("Buy Now",style: TextStyle(
                color: Colors.white,fontWeight: FontWeight.bold
              ),),
            ),
            
          ),
        ),
      ],
    );
  }
}