import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('$counter'),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.add,
          ),
          onPressed: () {
            setState(() {
              counter += 1;
            });
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
