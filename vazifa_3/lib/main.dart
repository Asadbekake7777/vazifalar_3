import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  get padding => null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leadingWidth: 80,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.minus),
            style: IconButton.styleFrom(
                side: BorderSide(color: Colors.green.shade900)),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.ellipsis_circle),
                style: IconButton.styleFrom(
                    side: BorderSide(color: Colors.green.shade900)),
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Text(
                  "   Bandung, Indonesia",
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(30),
              height: 400,
              width: 450,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.blue.shade500),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child:  buildWeatherInfo(),

                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: buildWeatherInfo1(),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 27.0),
              child: Row(
                children: [
                  Text(
                    "Today",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                  Text(
                    "Next 7 Days >",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 27.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 65,
                        child: Column(
                          children: [
                            Icon(Icons.wb_sunny),
                            Text("12:00"),
                            Text("Yomgir"),
                            Text("   Harorat: 26°C"),
                          ],
                        ),
                      ),
                      Container(
                        width: 65,
                        child: Column(
                          children: [
                            Icon(Icons.wb_sunny),
                            Text("14:00"),
                            Text("Yomgir"),
                            Text("   Harorat: 26°C"),
                          ],
                        ),
                      ),
                      Container(
                        width: 65,
                        child: Column(
                          children: [
                            Icon(Icons.cloud),
                            Text("16:00"),
                            Text("Bulutli"),
                            Text("   Harorat: 25°C"),
                          ],
                        ),
                      ),
                      Container(
                        width: 65,
                        child: Column(
                          children: [
                            Icon(Icons.wb_sunny),
                            Text("18:00"),
                            Text("Quyosh"),
                            Text("   Harorat: 31°C"),
                          ],
                        ),
                      ),
                      Container(
                        width: 65,
                        child: Column(
                          children: [
                            Icon(Icons.cloud),
                            Text("20:00"),
                            Text("Bulutli"),
                            Text("   Harorat:  23°C"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildWeatherInfo() {
  return const Column(
    children: [
      Icon(Icons.cloudy_snowing),
      Text(
        "Hearvy Rain",
        style: TextStyle(fontSize: 30),
      ),
      Text(
        "Sunday, 02 Oct",
        style: TextStyle(fontSize: 15),
      ),
      Text(
        "26°",
        style: TextStyle(fontSize: 50),
      ),
    ],
  );
}

Widget buildWeatherInfo1() {
  return const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("WND", style: TextStyle(fontSize: 10)),
              Text("19.2km/h", style: TextStyle(fontSize: 15)),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("FEELS LIKE", style: TextStyle(fontSize: 10)),
              Text("25°C", style: TextStyle(fontSize: 15)),
            ],
          ),
        ],
      ),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("INDEX", style: TextStyle(fontSize: 10)),
              Text("2", style: TextStyle(fontSize: 15)),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("PRESSURE", style: TextStyle(fontSize: 10)),
              Text("1014 mbar", style: TextStyle(fontSize: 15)),
            ],
          ),
        ],
      ),
    ],
  );
}
