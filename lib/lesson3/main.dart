// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.all(30),
            child: SvgPicture.asset(
              'assets/svg/skillbox.svg',
              height: 150,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: SvgPicture.network(
              'https://cdn.worldvectorlogo.com/logos/flutter.svg',
              height: 150,
              placeholderBuilder: (BuildContext context) => Container(
                padding: const EdgeInsets.all(30.0),
                child: const CircularProgressIndicator(
                  color: Colors.blueAccent,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
