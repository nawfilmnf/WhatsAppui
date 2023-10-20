import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    var icons;
    return MaterialApp(
      home: DefaultTabController(length: 3,child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          bottom: TabBar(tabs: [Icon(icons.chat), Icon(icons.status), Icon(icons.call)],
          ),
        ),
          backgroundColor: Colors.green,
        
       body: SingleChildScrollView(
       
          scrollDirection: Axis.vertical,
      
      
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
          
              getChatUI(
                "https://hips.hearstapps.com/hmg-prod/images/2024-lamborghini-revuelto-127-641a1d518802b.jpg",
                Colors.green,
                "WA",
                "Wahib Waseem",
                "Where are you..?",
                "10;10",
              ),
              getChatUI(
                "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW58ZW58MHx8MHx8fDA%3D",
                Colors.yellow,
                "AR",
                "Arsalan",
                "Taking class right now",
                "11:00",
              ),
              getChatUI(
                "https://images.unsplash.com/photo-1541963463532-d68292c34b19?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8fA%3D%3D",
                Colors.red,
                "AY",
                "Ayesha",
                "Where are you..?",
                "01:40",
              )

            
            ],
          ),
        ),
      ),
    ),
    );
    
  }
}

getBox(String url) {
  return Container(
    height: 200,
    width: 200,
    decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage("$url"),
        ),
        border: Border.all(color: Colors.black, width: 5),
        color: Colors.yellow,
        borderRadius: BorderRadius.all(Radius.circular(500))),
  );
}

getChatUI(String url, Color cColor, String avatar, String title,
    String subTitle, String trailing, ) {
  return ListTile(
    tileColor: Color.fromARGB(255, 232, 232, 232),
    leading: CircleAvatar(
      backgroundImage: NetworkImage(url),
      backgroundColor: cColor,
      child:
      

          Text(
        "$avatar",
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    ),
    title: Text("$title"),
    subtitle: Text("$subTitle"),
    trailing: Icon(
      Icons.camera,
      color: Colors.red,
    ),
  );
}