import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/controller/onboarding_cubit/onboarging_cubit.dart';
import 'package:my_app/core/cach/cache_helper.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/constant/images.dart';
import 'package:my_app/core/service/service_locator.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/utils/navigator.dart';
import 'package:my_app/core/widgets/custem_images.dart';
import 'package:my_app/features/botton_nav_screen/presentation/view/home_intro.dart';
import 'package:my_app/generated/locale_keys.g.dart';

class OnboardingBody extends StatefulWidget {
  OnboardingBody({super.key, this.controller});
  PageController? controller;

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: widget.controller,
      onPageChanged: (index) {
        context.read<OnboargingCubit>().currentindex(index);
      },
      itemCount: context.read<OnboargingCubit>().shape.length,
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
                      CustomImage(
                        url: AppImages.logo,
                        width: 178.w,
                        height: 56.h,
                      ),
                      InkWell(
                        onTap: () {
                          getIt<CacheHelper>().setData(
                            key: "isVisited",
                            value: true,
                          );
                          AppNavigator().pushReplaceMent(page: HomeIntro());
                        },
                        child: Text(
                          LocaleKeys.skip.tr(),
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              65.hi,
              Center(
                child: CustomImage(
                  url: context.read<OnboargingCubit>().onboarding[i],
                  width: 242.w,
                  height: 300.h,
                ),
              ),
              24.hi,
              Text(
                context.read<OnboargingCubit>().text[i],
                style: TextStyle(
                  fontSize: 20.sp,
                  color: AppColors.textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              10.hi,
              Text(
                context.read<OnboargingCubit>().title[i],
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
    );
  }
}
