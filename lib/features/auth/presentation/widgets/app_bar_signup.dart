import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/utils/navigator.dart';
import 'package:my_app/generated/locale_keys.g.dart';

class AppBarSignup extends StatelessWidget {
  const AppBarSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              fontSize: 20.sp,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
