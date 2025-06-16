import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/constant/images.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/utils/navigator.dart' show AppNavigator;
import 'package:my_app/core/widgets.dart/custem_images.dart';
import 'package:my_app/generated/locale_keys.g.dart';
import 'package:my_app/view/screens/signup_screen/signup_page1.dart';
import 'package:my_app/view/screens/signup_screen/signup_page2.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  int activeStep = 0;
  List<Widget> steps = [SignUpPage1(), SighUpPage2(), SighUpPage2()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(right: 20.h),
              width: double.infinity,
              height: 171.h,
              decoration: BoxDecoration(
                color: AppColors.accentColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    width: 40.w,
                    height: 40.h,
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          AppNavigator().pop();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new_rounded,

                          size: 15.sp,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ),
                  16.hi,
                  Text(
                    LocaleKeys.newperson.tr(),
                    style: TextStyle(
                      fontSize: 24.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            32.hi,
            Padding(
              padding: EdgeInsets.only(right: 16.h, left: 16.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        activeStep = 0;
                      });
                    },
                    child: SvgPicture.asset(
                      "assets/icons/profile.svg",
                      color: activeStep == 0 ? AppColors.accentColor : Colors.green,
                      width: 24,
                      height: 24,
                    ),
                  ),
                  Container(color: Colors.grey, width: 92.w, height: 2.h),
                  InkWell(
                    onTap: () {
                      setState(() {
                        activeStep = 1;
                      });
                    },
                    child: SvgPicture.asset(
                      "assets/icons/buliding.svg",
                      color: activeStep == 1 ? AppColors.accentColor : null,
                      width: 24,
                      height: 24,
                    ),
                  ),
                  Container(color: Colors.grey, width: 92.w, height: 2.h),
                  InkWell(
                    onTap: () {
                      setState(() {
                        activeStep = 2;
                      });
                    },
                    child: CustomImage(url: AppImages.Status, width: 24, height: 24),
                  ),
                ],
              ),
            ),
            32.hi,
            steps[activeStep],
          ],
        ),
      ),
    );
  }
}
