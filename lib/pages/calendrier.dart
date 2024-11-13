import 'package:flutter/material.dart';



class Calendrier extends StatefulWidget{
  const Calendrier({super.key});


  @override
  State<StatefulWidget> createState() {
   return CalendrierState();
  }
}

class CalendrierState extends State<Calendrier>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calendrier"),
        backgroundColor: Colors.blue,
      ),
    );
  }
}