import 'package:amie_jobApplication/Models/pictureModel.dart';
import 'package:amie_jobApplication/Services/Api.dart';

import '../../locator.dart';
import '../BaseModel.dart';

class HomeScreenModel extends BaseModel {
  final _api = locator<Api>();
  List<PictureModel> _pictures;
  List<PictureModel> get pictures => _pictures;

  Future getEpisodes() async {
    setBusy(true);
    var photoResults = await _api.getPhotos();

    if (photoResults is String) {
      // show error
    } else {
      _pictures = photoResults;
    }
    notifyListeners();
    setBusy(false);
  }
}
