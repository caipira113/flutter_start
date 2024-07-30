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
        child: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const SecondView()),
          ),
          child: Container(
            padding: const EdgeInsets.all(15),
            color: Colors.blue,
            child: const Text("-> Second View"),
          ),
        ),
      ),
    );
  }
}
