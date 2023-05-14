import 'package:flutter/material.dart';
import 'package:galereya/cloud_page.dart';
import 'package:galereya/menu_page.dart';
import 'package:galereya/search_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "rasmlar",
          style: TextStyle(color: Colors.pink),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, CloudPage.id);
              },
              icon: const Icon(
                Icons.cloud_queue,
                color: Colors.pink,
              )),
          // const SizedBox(width: 0,),
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, SearchPage.id);
              },
              icon: const Icon(
                Icons.search,
                color: Colors.pink,
              )),
          IconButton(
              onPressed: () {
               Navigator.pushReplacementNamed(context,MenuPage.id);
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.pink,
              ))
        ],
      ),
      body: Container(
          height: 1000,
          width: 500,
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://e0.pxfuel.com/wallpapers/180/245/desktop-wallpaper-lionel-messi-messi-ballon-d-or-leo-messi-lm7-leo-2021-ballon-d-or-ballon-d-or-2021-goat-ballon-d-or-winner-goa7.jpg")),
          ),
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 100,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  )),
                  child: OutlinedButton(
                    onPressed: () {
                      print("## Leonel Messi ##");
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.amber, width: 1),
                    ),
                    child: const Center(
                      child: Text(
                        "Leonel Messi",
                        style: TextStyle(
                            color: Colors.amber,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
