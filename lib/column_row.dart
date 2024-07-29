import 'package:flutter/material.dart';

class ColumnRowPage extends StatelessWidget {
  const ColumnRowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column Row"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 200,
                color: Colors.blue,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 200,
                color: Colors.red,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 200,
                color: Colors.yellow,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 200,
                color: Colors.lightGreen,
              )
            ],
          )
        ]),
      ),
    );
  }
}
