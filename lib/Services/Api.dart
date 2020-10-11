import 'package:amie_jobApplication/Models/pictureModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Api {
  static const String _apiEndpoint = "https://picsum.photos/v2/list";

  Future<dynamic> getPhotos() async {
    var response = await http.get(_apiEndpoint);
    if (response.statusCode == 200) {
      var pictures = (json.decode(response.body) as List)
          .map((pictures) => PictureModel.fromJson(pictures))
          .toList();
      return pictures;
    }
    // something wrong happened
    return 'Could not fetch the images at this time';
  }
}
