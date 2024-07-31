import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert"),
      ),
      body: Center(
        child: TextButton(
          child: const Text("Button"),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext con) {
                return AlertDialog(
                  title: const Text("Alert!!"),
                  content: const Text("Pressed."),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text("Close"),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
