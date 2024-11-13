import 'package:flutter/material.dart';



class Pdf_Page extends StatefulWidget{
  const Pdf_Page({super.key});


  @override
  State<StatefulWidget> createState() {
   return Pdf_PageState();
  }
}

class Pdf_PageState extends State<Pdf_Page>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PDF"),
        backgroundColor: Colors.blue,
      ),
    );
  }
}