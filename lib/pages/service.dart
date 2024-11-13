import 'package:flutter/material.dart';



class Service extends StatefulWidget{
  const Service({super.key});


  @override
  State<StatefulWidget> createState() {
   return ServiceState();
  }
}

class ServiceState extends State<Service>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: const [
            Card(
              child: ListTile(
                leading: Icon(Icons.book),
                title: Text("UIT"),
                subtitle: Text("Compagnon") ,
                trailing: Icon(Icons.more_vert_outlined),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.book),
                title: Text("UIT"),
                subtitle: Text("Compagnon") ,
                trailing: Icon(Icons.more_vert_outlined),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.book),
                title: Text("UIT"),
                subtitle: Text("Compagnon") ,
                trailing: Icon(Icons.more_vert_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }
}