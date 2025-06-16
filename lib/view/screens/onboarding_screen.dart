import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/controller/onboarding_cubit/onboarging_cubit.dart';
import 'package:my_app/core/cach/cache_helper.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/constant/images.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/utils/navigator.dart';
import 'package:my_app/core/widgets.dart/custem_images.dart';
import 'package:my_app/generated/locale_keys.g.dart';
import 'package:my_app/view/screens/home_intro.dart';
import 'package:my_app/view/screens/login.dart';

import '../../core/widgets.dart/button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List shape = [AppImages.shape1, AppImages.shape2];
  List<String> text = ["أفضل المنتجات", "طلبيتك في ميعادها!"];
  List<String> title = [
    "اكتشف منتجات مميزة واطلب فاتورة\n       من المورد الأقرب لك ",
    "تقدر تتابع حالة الطلبية \n  وهتوصلك في ميعادها",
  ];

  List<String> onboarding = [AppImages.onboarding, AppImages.onboarding2];
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboargingCubit, OnboargingState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(image: AssetImage(shape[state.currentIndex]), fit: BoxFit.cover),
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
                          color: AppColors.secondaryColor,
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
                        AppNavigator().pushReplaceMent(page: LogInScreen());
                      }
                    },
                    text: state.currentIndex == 1 ? "دخول" : "التالي",
                  ),
                ],
              ),
            ),
            body: PageView.builder(
              controller: pageController,
              onPageChanged: (index) {
                context.read<OnboargingCubit>().currentindex(index);
              },
              itemCount: shape.length,
              itemBuilder:
                  (index, i) => Column(
                    children: [
                      50.hi,
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Directionality(
                          textDirection: TextDirection.ltr,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImage(url: AppImages.logo, width: 178.w, height: 56.h),
                              InkWell(
                                onTap: () {
                                 
                                  AppNavigator().pushReplaceMent(page: HomeIntro());
                                },
                                child: Text(
                                  LocaleKeys.skip.tr(),
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    color: AppColors.secondaryColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      65.hi,
                      Center(child: CustomImage(url: onboarding[i], width: 242.w, height: 300.h)),
                      24.hi,
                      Text(
                        text[i],
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: AppColors.textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      10.hi,
                      Text(
                        title[i],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: AppColors.titleLight,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      24.hi,
                    ],
                  ),
            ),
          ),
        );
      },
    );
  }
}
