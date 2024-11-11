// import 'package:first_app/cancelled_orders.dart';
// import 'package:first_app/ongoing_orders.dart';
// import 'package:first_app/success_orders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/login.dart';
import 'package:flutter_application_2/register.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<StatefulWidget> createState() => _OrderScreen();
}

class _OrderScreen extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Orders"),
          backgroundColor: const Color.fromARGB(255, 255, 207, 207),
          centerTitle: true,
          bottom: const TabBar(
              labelColor: Color.fromARGB(255, 255, 0, 0),
              dividerColor: Color.fromARGB(255, 255, 0, 208),
              indicatorColor: Color.fromARGB(255, 17, 0, 255),
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.shop,
                  ),
                  text: "Ongoing Orders",
                ),
                Tab(
                  icon: Icon(
                    Icons.done,
                  ),
                  text: "Success Orders",
                ),
                Tab(
                  icon: Icon(
                    Icons.cancel,
                  ),
                  text: "Cancelled Orders",
                ),
              ]),
        ),
        body: const TabBarView(children: [
          Home(),
          Login(),
          Register()
          // CancelledOrders(),
        ]),
      ),
    );
  }
}
