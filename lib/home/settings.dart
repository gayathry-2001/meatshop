import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: const Text("Settings"),
      // ),
      body:  SafeArea(
        child: Center(child: Text("Settings"))),
    );
  }
  void settingUser(){
    const userid="565";
  }
}