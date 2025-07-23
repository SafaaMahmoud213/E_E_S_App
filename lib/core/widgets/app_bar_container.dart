import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/constant/images.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/widgets/custem_images.dart';

class AppBarContainer extends StatelessWidget {
  AppBarContainer({super.key, this.ishome = false, required this.text});
  final String text;
  bool ishome;

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
      child:
          ishome
              ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  40.hi,
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  20.hi,
                  CustomImage(url: AppImages.logo2, height: 50, width: 160),
                ],
              )
              : Center(
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
    );
  }
}
