import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button"),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
              onPressed: () {
                print("ElevatedButton click");
              },
              child: const Text("ElevatedButton"),
            ),
          ),
          Center(
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.yellow),
              onPressed: () {
                print("TextButton click");
              },
              child: const Text("TextButton"),
            ),
          ),
          Center(
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(backgroundColor: Colors.yellow),
              onPressed: () {
                print("OutlinedButton click");
              },
              child: const Text("OutlinedButton"),
            ),
          )
        ],
      ),
    );
  }
}
