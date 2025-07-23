import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/constant/images.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/widgets/custem_images.dart';

// ignore: must_be_immutable
class CustumContainer extends StatelessWidget {
  bool isTrue;
  CustumContainer({super.key, this.isTrue = false});

  @override
  Widget build(BuildContext context) {
    int activeStep = 0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(8),
              width: 145.w,
              height: 32.h,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(3), // Add rounded corners
              ),
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
                    "2023-10-01",
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: AppColors.titleLight,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(8),
              width: 145.w,
              height: 32.h,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(3),
              ),
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
                    "2023-10-01",
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

        Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(8),
          width: 145.w,
          height: 32.h,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(3), // Add rounded corners
          ),
          child: Row(
            children: [
              CustomImage(url: AppImages.calender),
              5.wi,
              Text(
                "تاريخ الإنشاء:",
                style: TextStyle(fontSize: 10.sp, color: AppColors.titleLight),
              ),
              Text(
                "2023-10-01",
                style: TextStyle(fontSize: 10.sp, color: AppColors.titleLight),
              ),
            ],
          ),
        ),
        25.hi,
        if (isTrue)
          EasyStepper(
            activeStep: activeStep,
            lineStyle: LineStyle(
              lineLength: 70,
              lineType: LineType.normal,
              activeLineColor: Colors.green.shade600,
              defaultLineColor: AppColors.titleLight,
            ),
            stepRadius: 20,
            showLoadingAnimation: false,
            steps: [
              EasyStep(
                customStep: CustomImage(
                  url: AppImages.confirm,
                  width: 24,
                  height: 24,
                ),
                customTitle: Text(
                  textAlign: TextAlign.center,
                  "تم تأكيد الطلب",
                  style: TextStyle(
                    color: Colors.green.shade600,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              EasyStep(
                customStep: CustomImage(
                  url: AppImages.onway,
                  width: 24,
                  height: 24,
                ),
                customTitle: Text(
                  textAlign: TextAlign.center,
                  "في الطريق",
                  style: TextStyle(
                    color: AppColors.titleLight,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              EasyStep(
                customStep: CustomImage(
                  url: AppImages.Status,
                  width: 24,
                  height: 24,
                ),
                customTitle: Text(
                  textAlign: TextAlign.center,
                  "تم تسليم الطلبية",
                  style: TextStyle(
                    color: AppColors.titleLight,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),

        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              width: 74.w,
              height: 80.h,
              child: Center(
                child: CustomImage(
                  url: AppImages.logo2,
                  width: 65.w,
                  height: 20.h,
                ),
              ),
            ),
            8.wi,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "الشركة المصرية للحلول الكهربائية ",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textColor,
                  ),
                ),
                8.hi,
                Text.rich(
                  TextSpan(
                    text: "عدد المنتجات:  ",
                    style: TextStyle(
                      fontSize: 13.sp,
                      color: AppColors.titleLight,
                    ),
                    children: [
                      TextSpan(
                        text: "3 منتجات",
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: AppColors.accentColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Text.rich(
                  TextSpan(
                    text: "إجمالي التكلفة:",
                    style: TextStyle(
                      fontSize: 13.sp,
                      color: AppColors.titleLight,
                    ),
                    children: [
                      TextSpan(
                        text: " 6،250 ج.م ",
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: AppColors.accentColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        20.hi,
      ],
    );
  }
}
