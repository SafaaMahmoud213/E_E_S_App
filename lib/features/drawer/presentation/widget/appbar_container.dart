import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/utils/navigator.dart';

class AppbarContainer extends StatefulWidget {
  const AppbarContainer({super.key, required this.text});
  final String text;

  @override
  State<AppbarContainer> createState() => _AppbarContainerState();
}

class _AppbarContainerState extends State<AppbarContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20.h),
      width: double.infinity,
      height: 145.h,
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Row(
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
          60.wi,
          Text(
            widget.text,
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
