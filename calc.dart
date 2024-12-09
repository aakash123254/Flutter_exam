import 'package:exam/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Hello'), 
              accountEmail: Text('company@123'),
              currentAccountPicture: Icon(Icons.person_3_rounded),
              ),
            const SizedBox(height: 20,),
            const Divider(height: 1.0,),

            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: 
                  (context) =>Home(),
                ));
              },
              title: Text('Home'),
              leading: Icon(Icons.home),
            ),
            const Divider(height: 1.0,),

            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: 
                  (context) =>Home(),
                ));
              },
              title: Text('Person'),
              leading: Icon(Icons.person),
            ),
            const Divider(height: 1.0,),

            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: 
                  (context) =>Home(),
                ));
              },
              title: Text('Person'),
              leading: Icon(Icons.person_2),
            ),
            const Divider(height: 1.0,),
          ],
        ),
      ),
      body: Column(
        children: [
          Text('Exam '),
          Icon(Icons.person),
          Row(
            children: [
              Image.network('https://unsplash.com/photos/a-desk-with-a-keyboard-mouse-and-a-book-KkFctpFp8vc'),
              Container(
                width: 300,
                height: 300,
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Enter username',
                        prefixIcon: Icon(Icons.person_2_sharp),
                      ),
                      controller: controller1,
                    ),
                    SizedBox(height: 10,),

                    TextField(
                      obscuringCharacter: '*',
                      obscureText: true,
                      decoration: InputDecoration
                      (labelText: 'Enter Password',
                      prefixIcon: Icon(Icons.password),
                      
                      ),
                      controller: controller2,
                      ),
                    SizedBox(height: 10,),

                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Home();
                      },));
                    }, child: Text('Login'))
                  ],
                
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}