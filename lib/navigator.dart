import 'package:flutter/material.dart';
import 'package:flutter_start/second_view.dart';

class Navigator1 extends StatelessWidget {
  const Navigator1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigator"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SecondView()),
            );
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: const Text(
            "Go to Second View",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
