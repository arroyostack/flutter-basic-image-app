// https://jsonplaceholder.typicode.com/photos/1
//  flutter run -d chrome --web-browser-flag "--disable-web-security"
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/widgets/image_list.dart';
import 'package:http/http.dart' show get;
import 'package:flutter_application_1/src/models/image_model.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  int counter = 1;
  List<ImageModel> images = [];

  void fetchImage() async {
    // Make a request to an
    // https://jsonplaceholder.typicode.com/photos/1
    counter += 1;
    final response = await get(
        Uri.parse('https://jsonplaceholder.typicode.com/photos/$counter'));
    final imageModel = ImageModel.fromJson(json.decode(response.body));
    setState(() {
      images.add(imageModel);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(images),
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
