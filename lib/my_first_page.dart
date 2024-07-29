import 'package:flutter/material.dart';

class MyFirstPage extends StatefulWidget {
  const MyFirstPage({super.key});

  @override
  State<MyFirstPage> createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My First Page"),
      ),
      body: const Center(
        child: Text("Hello, New World!"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("Pressed!"),
        child: const Icon(Icons.touch_app),
      ),
    );
  }
}
