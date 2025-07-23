import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/features/home/presentation/widget/confirm_bill.dart';
import 'package:my_app/features/home/presentation/widget/current_bills.dart';
import 'package:my_app/features/home/presentation/widget/previous_bill.dart';

class BillScreen extends StatefulWidget {
  const BillScreen({super.key});

  @override
  State<BillScreen> createState() => _BillScreenState();
}

class _BillScreenState extends State<BillScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    CurrentBillsScreen(),
    ConfirmBillScreen(),
    PreviousBillScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
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
                  'فواتيري ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            24.hi,

            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              decoration: BoxDecoration(color: Colors.grey.shade200),
              width: 350.w,
              height: 50.h,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = 0;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 2.w, right: 5.w),
                      width: 111.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        color:
                            currentIndex == 0
                                ? Colors.white
                                : Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: Center(
                        child: Text(
                          " فواتيري الحالية",

                          style: TextStyle(
                            fontSize: 13.sp,
                            color:
                                currentIndex == 0
                                    ? AppColors.textColor
                                    : AppColors.titleLight,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = 1;
                      });
                    },
                    child: Container(
                      width: 111.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        color:
                            currentIndex == 1
                                ? Colors.white
                                : Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: Center(
                        child: Text(
                          " فواتير تم تأكيدها ",
                          style: TextStyle(
                            fontSize: 13.sp,
                            color:
                                currentIndex == 1
                                    ? AppColors.textColor
                                    : AppColors.titleLight,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = 2;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 2.w, right: 5.w),
                      width: 111.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        color:
                            currentIndex == 2
                                ? Colors.white
                                : Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: Center(
                        child: Text(
                          "فواتير سابقة ",

                          style: TextStyle(
                            fontSize: 13.sp,
                            color:
                                currentIndex == 2
                                    ? AppColors.textColor
                                    : AppColors.titleLight,
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

            pages[currentIndex],
          ],
        ),
      ),
    );
  }
}
