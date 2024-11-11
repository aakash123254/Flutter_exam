import 'package:flutter/material.dart';
import 'package:my_app/board.dart';



class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Registration Page'),
        backgroundColor: Colors.blue,
        actions: const[
          Icon(Icons.person),
          Icon(Icons.camera),
        ],
      ),
      backgroundColor: (const Color.fromARGB(255, 92, 145, 152)),
      body: Padding(
        padding:  EdgeInsets.all(20.0),
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            const Icon(Icons.credit_card,size: 40,color: Colors.yellow,),
            const TextField(
              decoration: InputDecoration(
                hintText : 'Enter your Name: ',
                border:OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))
            ),
              ),
            ),
            const SizedBox(height: 20,),
            const TextField(
              decoration: InputDecoration(
                hintText : 'Enter your Password: ',
                border:OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))
            ),
              ),
            ),
            
            IconButton(onPressed: (){}, icon: const Icon(Icons.login)),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Board();
              },));
            }, child: Text('Login')),
            ]
          ),
        ),
      ),
    );
  }
}