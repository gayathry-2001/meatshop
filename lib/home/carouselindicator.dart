import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../lists.dart';

class CarouselWithIndicatorDemo extends StatefulWidget {
  const CarouselWithIndicatorDemo({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return 
      
     
        Column(children: [
          CarouselSlider(
            items: imageSliders,
            // itemCount: carouselimg.length,
            carouselController: _controller,
            
            
            // itemBuilder: ((context, index, realIndex) {
            //      return Container(
            //           margin: const EdgeInsets.all(6.0),
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(8.0),
            //             image: DecorationImage(
            //               image: AssetImage(carouselimg[index]),
            //               fit: BoxFit.cover,
            //             ),
            //           ),
            //         );
           
            //    }),
            
            options:  CarouselOptions(  
                    
                    pageSnapping: true,        
                    height: 180.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:const Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: carouselimg.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () {
                  _controller.animateToPage(entry.key);

                } ,
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      // boxShadow: [BoxShadow(color: Colors.black,spreadRadius: 20,)],
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? const Color.fromARGB(255, 191, 65, 65)
                              :  const Color.fromARGB(255, 25, 98, 171)) 
                          .withOpacity(current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
        ]);
      
    
  }
}

final List<Widget> imageSliders = carouselimg
    .map((item) => Container(
      margin: const EdgeInsets.all(5.0),
      child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.asset(item, fit: BoxFit.cover, width: 1000.0),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration:const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(199, 205, 20, 20),
                        Color.fromARGB(245, 152, 18, 18)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
               
                ),
              ),
            ],
          )),
    ))
    .toList();
