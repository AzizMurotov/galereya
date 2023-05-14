import 'package:flutter/material.dart';
import 'package:galereya/home_page.dart';

class SearchPage extends StatefulWidget {
  static const String id = "search_page";

  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Container",
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.black, width: 5),
              ),
              height: 300,
              width: 300,
              child: const Center(
                child: Text(
                  "Container",
                  style: TextStyle(color: Colors.black, fontSize: 40),
                ),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.black),
              ),
              child: const Center(
                child: Text(
                  "kichik Container",
                  style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: const BorderRadius.only(
                  topLeft:Radius.circular(30),
                  topRight: Radius.circular(50),
                ),
                border: Border.all(color: Colors.red),
              ),
              child: const Center(
                child: Text(
                  "3-Container",
                  style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
