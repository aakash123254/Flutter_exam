import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_app/board.dart';
import 'package:my_app/registration.dart';

void main(){
  runApp (MaterialApp(
    home: Registration(),
    debugShowCheckedModeBanner: false,
  ));
}

class _app extends StatefulWidget {
  const _app({super.key});

  @override
  State<_app> createState() => __appState();
}

class __appState extends State<_app> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  int result=0,num1=0,num2=0;
  add(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1+num2;
    });
  }
  sub(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1-num2;
    });
  }
  mul(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1*num2;
    });
  }
  div(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1~/num2;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, 
      MaterialPageRoute(
        builder: (context)=>Board(),
        ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shop)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.person)),
        ],
      ),
      body: Padding(padding: const EdgeInsets.all(20.0),
      child:Column(
        children: [
          Text ( 
            "Result: $result",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
         SizedBox(height: 20,),
         
         TextField(
          controller: controller1,
          decoration: InputDecoration(
            labelText: 'Enter First Number: ',
            border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
            ),
          ),
         ),
         
         SizedBox(height: 20,),
         
         TextField(
          controller: controller2,
          decoration: InputDecoration(
            labelText: 'Enter Second Number: ',
            border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
            ),
          ),
         ),
        
         SizedBox(height: 20,),

         Row( 
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              add();
              controller1.clear();
              controller2.clear();
            }, child: Text('Add')),
            ElevatedButton(onPressed: (){
              sub();
              controller1.clear();
              controller2.clear();
              
            }, child: Text('Sub')),
          ],
         ),
         SizedBox(height: 20,),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              mul();
              controller1.clear();
              controller2.clear();
            }, child: Text('Mul')),
            ElevatedButton(onPressed: (){
              div();
              controller1.clear();
              controller2.clear();
            }, child: Text('Div')),
          ],
         )
        ],
      ),
      ),
    );
  }
}