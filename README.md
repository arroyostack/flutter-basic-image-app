![Flutter](https://img.shields.io/badge/Flutter-Dart-blue)
![Flutter version](https://img.shields.io/badge/Flutter-v3.16.9-blue)

# Flutter Image Fetcher

This is a simple Flutter application that fetches images from a remote server and dynamically renders them on the screen. The user can fetch and display new images by pressing a button.

## Features

- Fetches images from 'https://jsonplaceholder.typicode.com/photos'
- Dynamically adds new images to the screen when the user presses a button
- Displays the title of each image
- Uses both stateful and stateless widgets

## How to Use

To use this app, simply press the floating action button at the bottom of the screen. This will fetch a new image from the server and add it to the list of images displayed on the screen.

## Implementation

The app is implemented using Flutter and Dart. It uses the `http` package to make GET requests to the server. The `ImageModel` class is used to parse the JSON response from the server and convert it into a Dart object.

The `App` widget is a stateful widget that maintains the state of the app, including the list of images and the current counter for the image to fetch. The `ImageList` widget is a stateless widget that takes a list of `ImageModel` objects and renders them on the screen.

Each image is displayed in a `Container` widget with a border. The `Image.network` widget is used to display the image itself, and a `Text` widget is used to display the title of the image.

## Resource.

This was an exercise form the course "Dart and Flutter: Developer Guide" by Stephen Grider.
