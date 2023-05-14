import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:galereya/home_page.dart';
import 'package:galereya/search_page.dart';

class CloudPage extends StatefulWidget {
  static const String id = "cloud_page";

  const CloudPage({Key? key}) : super(key: key);

  @override
  State<CloudPage> createState() => _CloudPageState();
}

class _CloudPageState extends State<CloudPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Column",
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
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage("https://i.pinimg.com/originals/13/47/c4/1347c4740a6925254691e7423a7826c1.jpg"),
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit:
                  BoxFit.cover,
                  image: NetworkImage("https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjSPMeMS-N2z-86Pr-mAbP-Jg_VK3ulw477hl5cJ3LAcJ7QW5yECEGI_SCBibs4zfk1_Hn6ANvBq4vZ1-ZbAS4Ohcg8lApAKOoQbwLaUzlHD3q3b-q-E6zpg5e9CN0Rmj9PsyvfHnhz5w8uY3ej2xpeCwjHuu_C7QXptyYmA-Sc7Dp3QDE4TzqxZbmLrw/w1600/messi-kissing-world-cup-wallpaper.png"),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
