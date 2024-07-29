import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.yellow,
        child: Stack(
          children: [
            Container(
              width: 150,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: 150,
              height: 200,
              margin: const EdgeInsets.only(top: 50, left: 50),
              color: Colors.blue,
            ),
            Positioned(
              left: 100,
              top: 100,
              child: Container(
                width: 150,
                height: 200,
                color: Colors.green,
              ),
            ),
            Container(
              width: 150,
              height: 200,
              margin: const EdgeInsets.only(top: 150, left: 150),
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
