

import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina Principal"),
        backgroundColor: Color.fromARGB(223, 210, 225, 4),
      ),
      body: Center(
        child: Center(child: Text("Contenido del proyecto"),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Oscar Nogales"), 
            accountEmail: Text("oer.nogales@yavirac.edu.ec"),
            currentAccountPicture: CircleAvatar(
              foregroundImage: AssetImage("images/lennon.jpg"),
            ),
            otherAccountsPictures: [
              CircleAvatar(
                foregroundImage: AssetImage("images/lennon.jpg"),
                ),
                CircleAvatar(
                foregroundImage: AssetImage("images/lennon.jpg"),
              )
            ],
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            ),
            Padding(padding: EdgeInsets.all(14.0),
            child: Text("Etiqueta 1"),
            ),
            ListTile(
            leading: Icon(Icons.home),
            title: Text("Primera opción"),
            ),
           ListTile(
            leading: Icon(Icons.home),
            title: Text("Segunda opción"),
            ),
            ListTile(
            leading: Icon(Icons.home),
            title: Text("Tercera opción"),
            ),
            Padding(padding: EdgeInsets.all(14.0),
            child: Text("Etiqueta 2"),
            ),
            ListTile(
            leading: Icon(Icons.home),
            title: Text("Primera opción"),
            ),
           ListTile(
            leading: Icon(Icons.home),
            title: Text("Segunda opción"),
            ),
            ListTile(
            leading: Icon(Icons.home),
            title: Text("Tercera opción"),
            ),
          ],
        )
      ),
    );
  }
}