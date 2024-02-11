import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.add,
          ),
          onPressed: () {
            print("Image");
          },
        ),
        appBar: AppBar(
          title: const Text('Hello World'),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
