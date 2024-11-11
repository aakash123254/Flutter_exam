import 'package:flutter/material.dart';
import 'package:my_app/main.dart';
import 'package:my_app/registration.dart';

class Board extends StatelessWidget {
  const Board({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.amber,

      ),
      drawer: Drawer(
        child: Column(children: [
          UserAccountsDrawerHeader(accountName: Text('Fruit'), accountEmail: Text('Orange')),
          ListTile(
            title: Text('Drawer Menu 1'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Registration();
              },));
            },
          ),
          Divider(),
          ListTile(
            title: Text('Drawer Menu 2'),
          ),
          Divider(),
          ListTile(
            title: Text('Drawer Menu 3'),
          ),
        ],),
      ),
      body: 
      Expanded(
        child: ListView.builder(itemCount: 15,itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(index.toString()),
              trailing: Icon(Icons.delete),
              leading: Icon(Icons.person),
            ),
          );
        },),
      ),
    );
  }
}