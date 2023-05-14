import 'package:flutter/material.dart';
import 'package:galereya/cloud_page.dart';
import 'package:galereya/home_page.dart';
import 'package:galereya/menu_page.dart';
import 'package:galereya/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const HomePage() ,
      routes: {
        HomePage.id:(context)=>const HomePage(),
        SearchPage.id:(context)=>const SearchPage(),
        CloudPage.id:(context)=>const CloudPage(),
        MenuPage.id:(context)=>const MenuPage(),
      },
    );
  }
}
