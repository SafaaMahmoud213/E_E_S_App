import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/controller/onboarding_cubit/onboarging_cubit.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/utils/navigator.dart';
import 'package:my_app/features/auth/presentation/view/login.dart';
import 'package:my_app/features/onboarding/presentation/widget/onboarding_body.dart';
import 'package:my_app/generated/locale_keys.g.dart';

import '../../../../core/cach/cache_helper.dart' show CacheHelper;
import '../../../../core/service/service_locator.dart' show getIt;
import '../../../../core/widgets/button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboargingCubit, OnboargingState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage(
                context.read<OnboargingCubit>().shape[state.currentIndex],
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  if (state.currentIndex == 1)
                    TextButton(
                      onPressed: () {
                        pageController.previousPage(
                          duration: Duration(milliseconds: 6),
                          curve: Curves.linear,
                        );
                      },
                      child: Text(
                        LocaleKeys.previous.tr(),
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                  if (state.currentIndex == 0)
                    ...List.generate(
                      2,
                      (index) => Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: CircleAvatar(
                          radius: 5.r,
                          backgroundColor:
                              index == state.currentIndex
                                  ? AppColors.primaryColor
                                  : AppColors.titleLight,
                        ),
                      ),
                    ),
                  Spacer(),
                  AppButton(
                    onPressed: () {
                      if (state.currentIndex == 0) {
                        pageController.nextPage(
                          duration: Duration(milliseconds: 6),
                          curve: Curves.linear,
                        );
                      } else {
                        getIt<CacheHelper>().setData(
                          key: "isVisited",
                          value: true,
                        );
                        AppNavigator().pushReplaceMent(page: LogInScreen());
                      }
                    },
                    text: state.currentIndex == 1 ? "دخول" : "التالي",
                  ),
                ],
              ),
            ),
            body: OnboardingBody(controller: pageController),
          ),
        );
      },
    );
  }
}
