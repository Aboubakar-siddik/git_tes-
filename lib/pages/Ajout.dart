import 'package:flutter/material.dart';



class Ajout extends StatefulWidget{
  const Ajout({super.key});


  @override
  State<StatefulWidget> createState() {
   return AjoutState();
  }
}

class AjoutState extends State<Ajout>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ajout"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Ajout",
              suffixIcon: Icon(Icons.border_color_rounded)
            ),
          ),
        ],
      ),
    );
  }
}