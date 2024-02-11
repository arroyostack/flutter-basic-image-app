class ImageModel {
  int id = 1;
  String url = "https://picsum.photos/id/237/200/300";
  String? title = 'Picture';

  ImageModel(this.id, this.url, this.title);

  ImageModel.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
  }
}
