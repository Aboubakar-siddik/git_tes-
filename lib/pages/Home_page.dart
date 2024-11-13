import 'package:dadado/pages/acceuil.dart';
import 'package:dadado/pages/compte.dart';
import 'package:dadado/pages/group.dart';
import 'package:dadado/pages/service.dart';
import 'package:flutter/material.dart';


class Homepage extends StatefulWidget{
  const Homepage({super.key});

  
  @override
  State<StatefulWidget> createState() {
    return HomepageState();
  }
} 

class HomepageState extends State<Homepage>{
final pages=[
  const Acceuil(),
  const Service(),
  const Group(),
  const Compte()
];

int pagesindex=0;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: pages[pagesindex],
      appBar: AppBar(
        title: const Text("Dadado"),
        elevation: 12,
        actions: [
          IconButton(
          onPressed: (){}, 
          icon: const Icon(Icons.search)
          ),
          IconButton(
          onPressed: (){},
          icon: const Icon(Icons.more_vert)
          )
        ],
        backgroundColor: Colors.blue,
      ),
       
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text("Menu"),
              decoration: BoxDecoration(
                color: Colors.blue
              ),
              ),
              ListTile(
                leading: const Icon(Icons.add),
                title: const Text("Ajouter"),
                onTap: (){
                  Navigator.pushNamed(context,"/Ajout");
                },
              ),
            ListTile(
                leading: const Icon(Icons.picture_as_pdf),
                title: const Text("PDF"),
                onTap: (){Navigator.pushNamed(context,"/pdf");},
              ),
            ListTile(
                leading: const Icon(Icons.alarm),
                title: const Text("Programme"),
                
                onTap: (){Navigator.pushNamed(context,"/prog");},
              ),
            ListTile(
                leading: const Icon(Icons.border_color_outlined),
                title: const Text("Note"),
                onTap: (){Navigator.pushNamed(context,"/note");},
              ),
            ListTile(
                leading: const Icon(Icons.calendar_month_outlined),
                title: const Text("Calendrier"),
                onTap: (){Navigator.pushNamed(context,"/calebdrier");},
              ),
            ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Parametre"),
                onTap: (){Navigator.pushNamed(context,"/param");},
              ),
             ListTile(
                leading: const Icon(Icons.help),
                title: const Text("Aide"),
                onTap: (){Navigator.pushNamed(context,"/help");},
              ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.blue,
        onDestinationSelected: (int i){
              setState(() {
                pagesindex=i;
              });
        },
        destinations:const [
          NavigationDestination(icon: Icon(Icons.home), label: "Acceuil"),
          NavigationDestination(
            icon: Icon(Icons.home_repair_service_rounded),
            label: "Services"
             ),
          NavigationDestination(
            icon: Icon(Icons.groups_2_rounded),
            label: "Group"
            ),
          NavigationDestination(
            icon: Icon(Icons.account_circle_rounded),
            label: "compte"
            ),
        ]
        ),
   );
  }
}