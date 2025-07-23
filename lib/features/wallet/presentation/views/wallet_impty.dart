import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/constant/images.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/widgets/app_bar_container.dart';
import 'package:my_app/core/widgets/custem_images.dart';

class WalletImbty extends StatefulWidget {
  const WalletImbty({super.key});

  @override
  State<WalletImbty> createState() => _WalletImbtyState();
}

class _WalletImbtyState extends State<WalletImbty> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarContainer(text: 'المحفظة '),

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
          Expanded(child: CustomImage(url: AppImages.wallet3)),
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
