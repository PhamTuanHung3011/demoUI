import 'package:flutter/material.dart';

class ListRareMovie extends StatelessWidget {
  const ListRareMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 250,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.amberAccent),
      ),
      child: Stack(
        children: [
          Positioned(
            child: Container(
              width: 144,
              height: 210,
              margin: EdgeInsets.only(left: 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/images/movie1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 130,
            child: Container(
              width: 70,
              height: 90,
              padding: EdgeInsets.only(top: 1),
              // decoration: BoxDecoration(
              //   border: Border.all(width: 1, color: Colors.amber),
              // ),
              child: Text(
                '1',
                style: TextStyle(
                  fontSize: 100,
                  color: Color(0xff242A32),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
