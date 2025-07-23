import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';

class HistoryWallet extends StatefulWidget {
  const HistoryWallet({super.key});

  @override
  State<HistoryWallet> createState() => _HistoryWalletState();
}

class _HistoryWalletState extends State<HistoryWallet> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
