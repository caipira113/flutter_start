import 'package:flutter/material.dart';
import 'package:flutter_start/result_screen.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _key = GlobalKey<FormState>();
  late String _username, _email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _key,
          child: Column(
            children: [
              usernameInput(),
              const SizedBox(height: 15),
              emailInput(),
              const SizedBox(height: 15),
              submitButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget usernameInput() {
    return TextFormField(
      autofocus: true,
      validator: (val) {
        if (val == null || val.isEmpty) {
          return "Input is empty.";
        } else {
          return null;
        }
      },
      onSaved: (username) => _username = username ?? '',
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: "caipira113",
          labelText: "username"
      ),
    );
  }

  Widget emailInput() {
    return TextFormField(
      autofocus: false,
      validator: (val) {
        if (val == null || val.isEmpty) {
          return "Input is empty.";
        } else {
          return null;
        }
      },
      onSaved: (email) => _email = email ?? '',
      decoration: const InputDecoration(
          border: OutlineInputBorder(),
          hintText: "caipira@libnare.net",
          labelText: "email"
      ),
    );
  }

  Widget submitButton() {
    return ElevatedButton(
        onPressed: () {
          if (_key.currentState?.validate() ?? false) {
            _key.currentState?.save();
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text("Result"),
                  content: Text("username: $_username\nemail: $_email"),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text("Close"),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResultScreenPage(
                              username: _username,
                              email: _email,
                            ),
                          ),
                        );
                      },
                      child: const Text("Route"),
                    ),
                  ],
                );
              }
            );
          }
        },
        child: const Text("Submit")
    );
  }
}
