import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';

class Signup2Body extends StatelessWidget {
  const Signup2Body({super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.textColor,
              fontWeight: FontWeight.w500,
            ),
          ),

          Text(
            text2,
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.textColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
