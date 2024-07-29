import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            ListTile(
              title: Text("Menu 1"),
            ),
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Drawer Header Part"),
            )
          ],
        ),
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
