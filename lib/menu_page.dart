import 'package:flutter/material.dart';
import 'package:galereya/cloud_page.dart';
import 'package:galereya/home_page.dart';
import 'package:galereya/search_page.dart';

class MenuPage extends StatefulWidget {
  static const String id = "menu_page";

  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Column 2",
          style: TextStyle(color: Colors.pink),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, HomePage.id);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.pink,
            )),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.pink),
        ),
      ),
    );
  }
}
