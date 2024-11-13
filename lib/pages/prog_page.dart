import 'package:flutter/material.dart';



class ProgPage extends StatefulWidget{
  const ProgPage({super.key});


  @override
  State<StatefulWidget> createState() {
   return ProgPageState();
  }
}

class ProgPageState extends State<ProgPage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Programme"),
        backgroundColor: Colors.blue,
      ),
    );
  }
}