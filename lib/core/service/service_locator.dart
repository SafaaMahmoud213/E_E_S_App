import 'package:get_it/get_it.dart';
import 'package:my_app/core/cach/cache_helper.dart';
import 'package:my_app/core/utils/navigator.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() {
  getIt.registerSingleton<AppNavigator>(AppNavigator());
  getIt.registerSingleton<CacheHelper>(CacheHelper());
}
