import 'package:flutter/material.dart';
import 'package:flutter_application_1/Tabs/donut_tab.dart';
import 'package:flutter_application_1/Tabs/pizza_tab.dart';
import 'package:flutter_application_1/Tabs/smoothie_tab.dart';
import 'package:flutter_application_1/utils/my_tab.dart';
import 'package:flutter_application_1/Tabs/burger_tab.dart';
import 'package:flutter_application_1/Tabs/pancakes_tab.dart'; // <- Usa minúsculas para evitar problemas

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    MyTab(iconPath: "lib/icons/donut.png"),
    MyTab(iconPath: "lib/icons/pizza.png"),
    MyTab(iconPath: "lib/icons/smoothie.png"),
    MyTab(iconPath: "lib/icons/burger.png"),
    MyTab(iconPath: "lib/icons/pancakes.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.menu, color: const Color.fromARGB(255, 104, 103, 103)),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person),
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            // 1. Texto principal
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  Text(
                    "I want to",
                    style: TextStyle(fontSize: 32),
                  ),
                  Text(
                    " eat",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),

            // 2. Pestañas (TabBar)
            TabBar(tabs: myTabs),

            // 3. Contenido de pestañas (TabBarView)
            Expanded(
              // <-- Agregamos Expanded para que TabBarView use el espacio restante
              child: TabBarView(
                children: [
                  DonutTab(),
                  BurgerTab(),
                  SmoothieTab(),
                  PizzaTab(),
                  PancakesTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
