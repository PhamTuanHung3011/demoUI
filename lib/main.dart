import 'package:demo3/list_rate/list_rate_screen.dart';
import 'package:flutter/material.dart';

import 'search_screens/search_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xff3A3F47),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 24,
                top: 42,
                child: Container(
                  width: 317,
                  height: 27,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.amber),
                  ),
                  child: Text(
                    'What do you want to watch?',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              Positioned(
                left: 24,
                top: 93,
                child: Search(),
              ),
              Positioned(
                left: 24,
                top: 160,
                child: ListRareMovie(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
