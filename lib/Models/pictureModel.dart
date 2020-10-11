import 'dart:convert';

class PictureModel {
  String id;
  String author;
  double width;
  double height;
  String url;
  String downloadUrl;
  PictureModel({
    this.id,
    this.author,
    this.width,
    this.height,
    this.url,
    this.downloadUrl,
  });

  factory PictureModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    return PictureModel(
      id: map['id'],
      author: map['author'],
      width: map['width'],
      height: map['height'],
      url: map['url'],
      downloadUrl: map['downloadUrl'],
    );
  }

  factory PictureModel.fromJson(String source) =>
      PictureModel.fromMap(json.decode(source));
}
