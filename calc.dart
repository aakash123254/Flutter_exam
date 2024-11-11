import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    home:Calc(),
    debugShowCheckedModeBanner: false,
  ));
}

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  TextEditingController controller1 =new TextEditingController();
  TextEditingController controller2 = new TextEditingController();

  int result=0,num1=0,num2=0;

  add(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result=num1+num2;
    });
  }

  sub(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result=num1-num2;
    });
  }

  mul(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result=num1*num2;
    });
  }

  div(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result=num1~/num2;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor:Colors.red,
        actions:[
          IconButton(onPressed: (){}, icon: Icon(Icons.person)),
          IconButton(onPressed: (){}, icon: Icon(Icons.person_3)),
        ],
      ),
      body: Padding(padding:  EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            "Result: $result",
            style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          
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
            labelText: 'Enter First Number: ',
            border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
            ),
          ),
          ),

          SizedBox(height: 20,),  

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
              add();
              controller1.clear();
              controller2.clear();
              }, child: Text('add'),
              ),
              ElevatedButton(onPressed: (){
              sub();
              controller1.clear();
              controller2.clear();
              }, child: Text('sub'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                mul();
                controller1.clear();
                controller2.clear();
              }, child: Text('Mul')
              ),

              ElevatedButton(onPressed: (){
                div();
                controller1.clear();
                controller2.clear();
              }, child: Text('Div')
              ),

          ],)
        ],
      ),
      ),
    );
  }
}