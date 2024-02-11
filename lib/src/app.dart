// https://jsonplaceholder.typicode.com/photos/1

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'package:flutter_application_1/src/models/image_model.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  void fetchImage() async {
    // Make a request to an
    // https://jsonplaceholder.typicode.com/photos/1
    counter += 1;
    var response = await get(
        Uri.parse('https://jsonplaceholder.typicode.com/photos/$counter'));
    var imageModel = ImageModel.fromJson(json.decode(response.body));
    setState(() {
      images.add(imageModel);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('$counter'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          child: const Icon(
            Icons.add,
          ),
        ),
        appBar: AppBar(
          title: const Text('Hello World'),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
