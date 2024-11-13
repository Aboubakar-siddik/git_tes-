import 'package:flutter/material.dart';



class Aide extends StatefulWidget{
  const Aide({super.key});


  @override
  State<StatefulWidget> createState() {
   return AideState();
  }
}

class AideState extends State<Aide>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aide"),
        backgroundColor: Colors.blue,
      ),
    );
  }
}