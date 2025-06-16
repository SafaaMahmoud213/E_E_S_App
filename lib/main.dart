import 'package:adaptive_theme/adaptive_theme.dart' show AdaptiveTheme, AdaptiveThemeMode;
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:my_app/controller/app_bloc_observer.dart';
import 'package:my_app/controller/checkbox_cubit/checkbox_cubit.dart';
import 'package:my_app/controller/filter_cubit/switch_cubit.dart';
import 'package:my_app/controller/login_cubit/login_cubit.dart';
import 'package:my_app/controller/onboarding_cubit/onboarging_cubit.dart';
import 'package:my_app/controller/pinput_cubit/pinput_cubit.dart';
import 'package:my_app/controller/screen_nav_cubit/screen_nav_cubit.dart';
import 'package:my_app/controller/signup_cubit/signup_cubit.dart';
import 'package:my_app/core/cach/cache_helper.dart';
import 'package:my_app/core/theme/dart_theme.dart' show darkTheme;
import 'package:my_app/core/theme/light_theme.dart' show lightTheme;
import 'package:my_app/core/utils/navigator.dart';
import 'package:my_app/view/screens/onboarding_screen.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  Bloc.observer = AppBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.cachInitialization();
  await ScreenUtil.ensureScreenSize();
  await EasyLocalization.ensureInitialized();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: HydratedStorageDirectory((await getTemporaryDirectory()).path),
  );
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('ar'), Locale('en')],
      path: 'assets/translations',
      fallbackLocale: Locale('ar'),
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
              return MultiBlocProvider(
                providers: [
                  BlocProvider(create: (context) => SwitchCubit()),
                  BlocProvider(create: (context) => CheckboxCubit()),
                  BlocProvider(create: (context) => LoginCubit()),
                  BlocProvider(create: (context) => PinputCubit()),
                  BlocProvider(create: (context) => SignupCubit()),
                  BlocProvider(create: (context) => ScreenNavCubit()),
                  BlocProvider(create: (context) => OnboargingCubit()),
                ],
                child: MaterialApp(
                  navigatorKey: AppNavigator.navigatorKey,
                  theme: light,
                  darkTheme: dark,
                  debugShowCheckedModeBanner: false,
                  title: 'Flutter App',
                  localizationsDelegates: context.localizationDelegates,
                  supportedLocales: context.supportedLocales,
                  locale: context.locale,

                  home: OnboardingScreen(),
                ),
              );
            },
          ),
    );
  }
}
