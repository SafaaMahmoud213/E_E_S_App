import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';

class AvailableWallet extends StatelessWidget {
  const AvailableWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
