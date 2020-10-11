import 'package:get_it/get_it.dart';

import 'Services/Api.dart';
import 'Services/NavigationService.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => Api());
}
