import 'package:flutter/material.dart';

class Faq extends StatefulWidget {
   final desc;
  const Faq({super.key, this.desc});

  @override
  State<Faq> createState() => _FaqState();
}

class _FaqState extends State<Faq> {
 


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:  Text (widget.desc),
      ),
      body:  SafeArea(
        child: Center(child: Text(widget.desc))),
    );
  }
}