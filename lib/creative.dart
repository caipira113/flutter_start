import 'package:flutter/material.dart';

class Creative extends StatelessWidget {
  const Creative({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Creative"),
      ),
      backgroundColor: Colors.grey,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.brown,
              height: 50,
            ),
          ),
          Positioned(
            bottom: 50,
            left: 15,
            child: Container(
              color: Colors.yellow,
              width: 50,
              height: 50,
            ),
          ),
          Center(
            child: Container(
              color: Colors.lightBlue,
              width: 110,
              height: 40,
            ),
          ),
        ],
      ),
    );
  }
}
