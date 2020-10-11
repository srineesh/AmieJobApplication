import 'package:amie_jobApplication/Models/pictureModel.dart';
import 'package:amie_jobApplication/Services/Api.dart';

import '../../locator.dart';
import '../BaseModel.dart';

class HomeScreenModel extends BaseModel {
  final _api = locator<Api>();
  List<PictureModel> _pictures;
  List<PictureModel> get pictures => _pictures;
}
