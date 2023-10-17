

import 'package:flutter/material.dart';
import 'package:meatshopproj/lists.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar: AppBar(
      //   title: const Text("Settings"),
      // ),
      body:  SafeArea(
        child: Center(child: Container(
         
          color: const Color.fromARGB(255, 227, 224, 224),
         
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Column(
              children: [
                Expanded(
                  child: ListView.separated(
                    itemCount: settingvals.length,
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 2,);
                    },
                    itemBuilder: ((context, index) {
                    return Container(
                      color: Colors.white,
                      child:  ListTile(
                        title: Text(settingvals[index]),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      ),
                    );
                  })),
                ),
                
              ],
            ),
          ),
        ))),
    );
  }
  
}