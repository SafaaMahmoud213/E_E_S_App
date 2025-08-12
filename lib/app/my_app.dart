import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/controller/checkbox_cubit/checkbox_cubit.dart';
import 'package:my_app/controller/filter_cubit/switch_cubit.dart';
import 'package:my_app/controller/login_cubit/login_cubit.dart';
import 'package:my_app/controller/onboarding_cubit/onboarging_cubit.dart';
import 'package:my_app/controller/pinput_cubit/pinput_cubit.dart';
import 'package:my_app/controller/screen_nav_cubit/screen_nav_cubit.dart';
import 'package:my_app/controller/signup_cubit/signup_cubit.dart';
import 'package:my_app/core/theme/dart_theme.dart';
import 'package:my_app/core/theme/light_theme.dart';
import 'package:my_app/core/utils/navigator.dart';
import 'package:my_app/features/splash_screen/presentation/view/splash_screen.dart'
    show SplashScreen;

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

                  home: SplashScreen(),
                ),
              );
            },
          ),
    );
  }
}
