import 'package:flutter/material.dart';

class ResultScreenPage extends StatelessWidget {
  final String username;
  final String email;

  const ResultScreenPage({super.key, required this.username, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Result"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Username: $username", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text("Email: $email", style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
