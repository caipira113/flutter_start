import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  final postList = [
    {"title": "Sample title 1", "color": Colors.blue},
    {"title": "Sample title 2", "color": Colors.greenAccent},
    {"title": "Sample title 3", "color": Colors.lime},
    {"title": "Sample title 4", "color": Colors.blue},
    {"title": "Sample title 5", "color": Colors.green},
    {"title": "Sample title 6", "color": Colors.yellow},
    {"title": "Sample title 7", "color": Colors.red},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("List View"),
        ),
        body: ListView.builder(
            itemCount: postList.length,
            itemBuilder: (BuildContext con, int index) {
              return postContainer(
                  title: postList[index]["title"] as String,
                  colorData: postList[index]["color"] as Color);
            }));
  }

  Widget postContainer({String title = '', Color colorData = Colors.red}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: const Text("test"),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          color: Colors.orange,
        )
      ],
    );
  }
}
