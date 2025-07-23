import 'package:get_it/get_it.dart';
import 'package:my_app/core/utils/navigator.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() {
  getIt.registerSingleton<AppNavigator>(AppNavigator());
}
