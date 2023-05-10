import 'package:flutter/material.dart';
import 'dart:math' as math;

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
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter: Primeiros Passos'),
        ),
        body: ListView(
          children: [
            ColorGalery(
                colorOne: randomColor(),
                colorTwo: randomColor(),
                colorThree: randomColor()),
            ColorGalery(
                colorOne: randomColor(),
                colorTwo: randomColor(),
                colorThree: randomColor()),
            ColorGalery(
                colorOne: randomColor(),
                colorTwo: randomColor(),
                colorThree: randomColor()),
            ColorGalery(
                colorOne: randomColor(),
                colorTwo: randomColor(),
                colorThree: randomColor()),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
      ),
    );
  }
}

class ColorGalery extends StatelessWidget {
  final Color colorOne;
  final Color colorTwo;
  final Color colorThree;

  const ColorGalery(
      {super.key,
      required this.colorOne,
      required this.colorTwo,
      required this.colorThree});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: colorOne,
            ),
            width: 100,
            height: 150,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: colorTwo,
                image: DecorationImage(
                  image: NetworkImage(
                    'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                  ),
                )),
            width: 100,
            height: 150,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: colorThree,
            ),
            width: 100,
            height: 150,
          ),
        ],
      ),
    );
  }
}

Color randomColor() {
  return Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
      .withOpacity(1.0);
}
