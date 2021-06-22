// Flutter imports:
// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

main() {
  runApp(HomeworkApp());
}

class HomeworkApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homework app',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: HomePage(title: 'Homework Page'),
    );
  }
}

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CarouselSlider(
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height,
        ),
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                child: Image.network('https://picsum.photos/250?image=$i'),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
