import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/constant/images.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/utils/navigator.dart' show AppNavigator;
import 'package:my_app/core/widgets.dart/button.dart';
import 'package:my_app/core/widgets.dart/custem_images.dart';
import 'package:my_app/view/screens/screens_button_nav/screens_nav.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

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
                'العربة ',
                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          100.hi,
          Expanded(child: CustomImage(url: AppImages.bill1)),
          50.hi,
          Text(
            "لا توجد منتجات في العربة",
            style: TextStyle(
              fontSize: 18.sp,
              color: AppColors.titleLight,
              fontWeight: FontWeight.bold,
            ),
          ),
          5.hi,
          Text(
            textAlign: TextAlign.center,
            "طلبك قيد المراجعة اذهب إلي فواتيري\n لمتابعة حالة الطلبيات",
            style: TextStyle(
              fontSize: 16.sp,
              color: AppColors.titleLight,
              fontWeight: FontWeight.w400,
            ),
          ),
          30.hi,
          AppButton(
            ismaximumSize: true,
            onPressed: () {
              AppNavigator().push(page: ScreensNav());
            },
            text: "اطلب الان",
          ),
        ],
      ),
    );
  }
}
