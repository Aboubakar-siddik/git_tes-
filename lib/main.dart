
import 'package:dadado/pages/Ajout.dart';
import 'package:dadado/pages/Home_page.dart';
import 'package:dadado/pages/aide.dart';
import 'package:dadado/pages/calendrier.dart';
import 'package:dadado/pages/note_page.dart';
import 'package:dadado/pages/pdf_page.dart';
import 'package:dadado/pages/prog_page.dart';
import 'package:dadado/pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main ()async {
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const Home());
}

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     
      debugShowCheckedModeBanner: false,
      initialRoute:"/",
      routes: {
        "/": (context)  => const Homepage(),
        "/Ajout":(context)=>const Ajout(),
        "/pdf":(context)=> const Pdf_Page(),
        "/prog":(context)=>const ProgPage(),
        "/note":(context)=>const NotePage(),
        "/calebdrier":(context)=>const Calendrier(),
        "/param":(context)=>const Settings(),
        "/help":(context)=>const Aide()
      },
      

    );
  }
} 