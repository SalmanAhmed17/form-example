import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text("Portfolio"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: const Form(),
      ),
    );
  }
}

class Form extends StatefulWidget {
  const Form({super.key});

  @override
  State<Form> createState() => _FormState();
}

class _FormState extends State<Form> {
  final keys = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextFormField(
          decoration: const InputDecoration(
            hintText: "Enter your name",
            labelText: "Name",
            icon: Icon(Icons.person),
          ),
        ),
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
            hintText: "Enter your password",
            labelText: "Password",
            icon: Icon(Icons.lock),
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            hintText: "Enter your Github link",
            labelText: "Github",
            icon: Icon(Icons.link),
          ),
        ),
        Container(
          child: TextButton(
            onPressed: () {},
            child: Text("Submit"),
          ),
        ),
      ],
    );
  }
}
