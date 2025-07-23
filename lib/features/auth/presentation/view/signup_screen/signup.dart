import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/constant/images.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/widgets/custem_images.dart';
import 'package:my_app/features/auth/presentation/view/signup_screen/signup_page1.dart';
import 'package:my_app/features/auth/presentation/view/signup_screen/signup_page2.dart';
import 'package:my_app/features/auth/presentation/widgets/app_bar_signup.dart';

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
            AppBarSignup(),
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
                      color:
                          activeStep == 0
                              ? AppColors.accentColor
                              : Colors.green,
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
                    child: CustomImage(
                      url: AppImages.Status,
                      width: 24,
                      height: 24,
                    ),
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
