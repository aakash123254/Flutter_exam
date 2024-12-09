import 'package:exam/order.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController
    (
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home Page '),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.shop),
              text: 'Ongoing Orders',
            ),

            Tab(
              icon: Icon(Icons.done),
              text: 'Ongoing Completed',
            ),

            Tab(
              icon: Icon(Icons.cancel),
              text: 'Orders Canceled',
            ),
          ]),
          ),
        body: TabBarView(
          children: [
            order(),
            order(),
            order(),
          ],

        ),
      ),
    );
  }
}