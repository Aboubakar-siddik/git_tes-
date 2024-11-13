import 'package:flutter/material.dart';



class Compte extends StatefulWidget{
  const Compte({super.key});


  @override
  State<StatefulWidget> createState() {
   return CompteState();
  }
}

class CompteState extends State<Compte>{


  final _formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: Form(
          key: _formkey,
          child:Column(
            children: [
             Container(
              margin: EdgeInsets.only(bottom: 20),
               child: TextFormField(
                decoration: InputDecoration(
                labelText: "Nom de l'utilisateur",
                hintText: "Entrer votre nom",
                border: OutlineInputBorder(),
                           ),
                           validator: (value){
                  if(value==null || value.isEmpty){
                    return "Vous devez remplir le champ";
                  }
                  },
                ),
             ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: TextFormField(
               decoration: InputDecoration(
              suffixIcon:Icon(Icons.email),
               labelText: "Adresse de l'utilisateur",
               hintText: "Entrer votre Mail",
               border: OutlineInputBorder(),
              ),
               validator: (value){
                 if(value==null || value.isEmpty){
                   return "Vous devez remplir le champ";
                 }
                },
              ),
            ),
             Container(
              margin: EdgeInsets.only(bottom: 20),
               child: TextFormField(
                decoration: InputDecoration(
                labelText: "Mot de passe de l'utilisateur",
                hintText: "Entrer votre mod de passe",
                border: OutlineInputBorder(),
                ),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return "Vous devez remplir le champ";
                  }
                },
                ),
             ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){
                if(_formkey.currentState!.validate()){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("En cours..."))
                    );
                }
              }, 
              child: Text("Envoyer"),
              ),
          )
        ],
      ),
    ),
  ),

);
  }
}