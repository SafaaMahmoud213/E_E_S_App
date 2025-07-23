import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/constant/images.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/widgets/custem_images.dart';

class WalletBody extends StatefulWidget {
  const WalletBody({super.key});

  @override
  State<WalletBody> createState() => _WalletBodyState();
}

class _WalletBodyState extends State<WalletBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(5),
      width: 400.w,
      height: 120.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade100, width: 1.5),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(5),
                width: 145.w,
                height: 30.h,
                decoration: BoxDecoration(color: Colors.grey.shade200),
                child: Row(
                  children: [
                    CustomImage(url: AppImages.calender),
                    5.wi,
                    Text(
                      "تاريخ الإنشاء:",
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: AppColors.titleLight,
                      ),
                    ),
                    Text(
                      " 2023-10-01",
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: AppColors.titleLight,
                      ),
                    ),
                  ],
                ),
              ),
              40.wi,
              Container(
                margin: EdgeInsets.all(5),
                width: 145.w,
                height: 30.h,
                decoration: BoxDecoration(color: Colors.grey.shade200),
                child: Row(
                  children: [
                    CustomImage(url: AppImages.calender),
                    5.wi,
                    Text(
                      "تاريخ الصلاحية :",
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: AppColors.titleLight,
                      ),
                    ),
                    Text(
                      " 2023-10-01",
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: AppColors.titleLight,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          10.hi,
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  "رصيد مرتجع في المحفظة ",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.accentColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                  "50 ج.م",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.accentColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
