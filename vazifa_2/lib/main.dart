import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leadingWidth: 80,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.back),
            style: IconButton.styleFrom(
                side: BorderSide(color: Colors.green.shade400)),
          ),
          title: const Text(
            "Course Details",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.heart_circle),
                style: IconButton.styleFrom(
                    side: BorderSide(color: Colors.grey.shade400)),
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(30),
              height: 270,
              width: 450,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.blue,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                "English for Beginner",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.all(15),
                    height: 90,
                    width: 90,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color.fromARGB(255, 105, 100, 100),
                    ),
                    child: const Stack(
                      children: [
                        Center(
                          child: Text(
                            "24",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "Chapter",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 5),
                  Container(
                    margin: const EdgeInsets.all(15),
                    height: 90,
                    width: 90,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color.fromARGB(255, 105, 100, 100),
                    ),
                    child: const Stack(
                      children: [
                        Center(
                          child: Text(
                            "12",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "Exam",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 5),
                  Container(
                    margin: const EdgeInsets.all(15),
                    height: 90,
                    width: 90,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color.fromARGB(255, 105, 100, 100),
                    ),
                    child: const Stack(
                      children: [
                        Center(
                          child: Text(
                            "05",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "Rewards",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                "About Course",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                "Etiam id dolor ex. Vivamus lobotis varius tortor, the elementum eleifend ligula tincidunt eget. Maruris ut semper odio. Etiam at justa a massa",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                "Etiam id dolor ex. Vivamus lobotis varius tortor, the elementum eleifend ligula tincidunt eget. Maruris ut",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              // padding: const EdgeInsets.only(),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: const Color.fromARGB(255, 50, 43, 239),
                    child: Row(
                      children: [
                        buildTextWithIcon(Icons.home, "Home"),
                        buildTextWithIcon(Icons.favorite, "Favorite"),
                        buildTextWithIcon(Icons.account_circle, "Profile"),
                        buildTextWithIcon(Icons.school, "Course"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildTextWithIcon(IconData icon, String text) {
  return SizedBox(
    height: 100,
    width: 95,
    // padding: const EdgeInsets.only(bottom: 20.0),
    child: Row(
      children: [
        Icon(icon),
        const SizedBox(width: 5),
        Text(
          text,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
