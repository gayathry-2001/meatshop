import 'package:flutter/material.dart';

class Cat extends StatefulWidget {
  const Cat({super.key});

  @override
  State<Cat> createState() => _CatState();
}

class _CatState extends State<Cat> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
        
      //   title: const Text("Categories"),
      // ),
      body:  SafeArea(
        child: Center(child: Text("Categories"))),
    );
  }
}