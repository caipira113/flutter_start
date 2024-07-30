import 'package:flutter/material.dart';
import 'my_first_page.dart';
import 'column_row.dart';
import 'stack.dart';
import 'creative.dart';
import 'package:flutter_start/align.dart';
import 'alert.dart';
import 'image.dart';
import 'button.dart';
import 'navigator.dart';
import 'list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.first_page),
              title: const Text('My First Page'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFirstPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.view_column),
              title: const Text('Column Row'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ColumnRowPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.layers),
              title: const Text('Stack'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const StackPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_box),
              title: const Text('Creative'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Creative()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_box),
              title: const Text('Align'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Align1()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.warning),
              title: const Text('Alert'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Alert()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.image),
              title: const Text('Image'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Image1()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.smart_button),
              title: const Text('Button'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Button()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.move_up),
              title: const Text('Navigator'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Navigator1()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text('List View'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ListView1()),
                );
              },
            )
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Home Page',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
