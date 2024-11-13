import 'package:flutter/material.dart';



class NotePage extends StatefulWidget{
  const NotePage({super.key});


  @override
  State<StatefulWidget> createState() {
   return NotePagState();
  }
}

class NotePagState extends State<NotePage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Note"),
        backgroundColor: Colors.blue,
      ),
    );
  }
}