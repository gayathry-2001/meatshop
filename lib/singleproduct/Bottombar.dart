import 'package:flutter/material.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({
    super.key,
    required this.iccolor,
  });

  final Color iccolor;

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  bool press=true;
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
                IconButton(onPressed: (){
                  setState(() {
                    press=!press;
                  });
                }, icon: Icon(Icons.favorite_sharp,
                color: press == true? const Color.fromARGB(255, 252, 251, 251) : const Color.fromARGB(255, 250, 1, 1),
                shadows: const [Shadow(
                  color: Colors.red,
                  blurRadius: 10
                )]),),
                
                
                  Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child:  InkWell(
                    onTap: () {
                      setState(() {
                        press =!press;
                      });
                    },
                    child: const Text("Save",style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                  ),
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