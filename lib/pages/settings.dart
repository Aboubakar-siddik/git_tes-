import 'package:flutter/material.dart';



class Settings extends StatefulWidget{
  const Settings({super.key});


  @override
  State<StatefulWidget> createState() {
   return SettingsState();
  }
}

class SettingsState extends State<Settings>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parametre"),
        backgroundColor: Colors.blue,
      ),
    );
  }
}