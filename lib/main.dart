import 'package:adaptive_theme/adaptive_theme.dart' show AdaptiveTheme, AdaptiveThemeMode;
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/theme/dart_theme.dart' show darkTheme;
import 'package:my_app/core/theme/light_theme.dart' show lightTheme;
import 'package:my_app/core/utils/navigator.dart';
import 'package:my_app/view/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/translations',
      fallbackLocale: Locale('en'),
      saveLocale: true,
      startLocale: Locale("ar"),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: lightTheme,
      initial: AdaptiveThemeMode.light,
      dark: darkTheme,
      builder:
          (light, dark) => ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (_, child) {
              return MaterialApp(
                navigatorKey: AppNavigator().navigatorKey,
                theme: light,
                darkTheme: dark,
                debugShowCheckedModeBanner: false,
                title: 'Flutter App',
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: context.locale,
                // theme: ThemeData(
                //   colorScheme: ColorScheme.fromSeed(seedColor:
                //    Colors.deepPurple),
                // ),
                home: SplashScreen(),
              );
            },
          ),
    );
  }
}
