import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/constant/images.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/utils/navigator.dart';
import 'package:my_app/core/widgets.dart/custem_images.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 145.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.accentColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Center(
              child: Text(
                'المحفظة ',
                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          40.hi,
          Container(
            width: 343.w,
            height: 112,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.accentColor, width: 1.5),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "الرصيد المتاح",
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.accentColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                8.hi,
                Text(
                  "0 ج.م",
                  style: TextStyle(
                    fontSize: 24,
                    color: AppColors.accentColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          20.hi,
          Expanded(
            child: GestureDetector(
              onTap: () {
                AppNavigator().push(page: WalletNotImbty());
              },
              child: CustomImage(url: AppImages.wallet3),
            ),
          ),
          20.hi,
          Text(
            "لا يوجد رصيد حتي الان",
            style: TextStyle(
              fontSize: 18.sp,
              color: AppColors.titleLight,
              fontWeight: FontWeight.bold,
            ),
          ),

          Text(
            textAlign: TextAlign.center,
            "هنا ستظهر لك الرصيد المتاح في محفظتك  \nفي حين وجود رصيد جديد",
            style: TextStyle(
              fontSize: 16.sp,
              color: AppColors.titleLight,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class WalletNotImbty extends StatefulWidget {
  const WalletNotImbty({super.key});

  @override
  State<WalletNotImbty> createState() => _WalletNotImbtyState();
}

class _WalletNotImbtyState extends State<WalletNotImbty> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 145.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.accentColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Center(
                child: Text(
                  'المحفظة ',
                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            40.hi,
            Container(
              width: 343.w,
              height: 112,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.accentColor, width: 1.5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "الرصيد المتاح",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  8.hi,
                  Text(
                    "50 ج.م",
                    style: TextStyle(
                      fontSize: 24,
                      color: AppColors.accentColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            20.hi,
            Container(
              decoration: BoxDecoration(color: Colors.grey.shade200),
              width: 343.w,
              height: 50.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = 0;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 2.w, right: 5.w),
                      width: 160.w,
                      height: 35.h,
                      decoration: BoxDecoration(
                        color: currentIndex == 0 ? Colors.white : Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: Center(
                        child: Text(
                          "رصيد إضافة",

                          style: TextStyle(
                            fontSize: 13.sp,
                            color: AppColors.accentColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = 1;
                      });
                    },
                    child: Container(
                      width: 160.w,
                      height: 35.h,
                      decoration: BoxDecoration(
                        color: currentIndex == 1 ? Colors.white : Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: Center(
                        child: Text(
                          "رصيد خصم ",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: AppColors.accentColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            24.hi,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerRight,

                child: Text(
                  "المعاملات الأخيرة",
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: AppColors.titleLight,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            10.hi,
            Container(
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
                              style: TextStyle(fontSize: 10.sp, color: AppColors.titleLight),
                            ),
                            Text(
                              " 2023-10-01",
                              style: TextStyle(fontSize: 10.sp, color: AppColors.titleLight),
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
                              style: TextStyle(fontSize: 10.sp, color: AppColors.titleLight),
                            ),
                            Text(
                              " 2023-10-01",
                              style: TextStyle(fontSize: 10.sp, color: AppColors.titleLight),
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
            ),
          ],
        ),
      ),
    );
  }
}
