import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/constant/images.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/utils/navigator.dart' show AppNavigator;
import 'package:my_app/core/widgets/app_bar_container.dart';
import 'package:my_app/core/widgets/button.dart';
import 'package:my_app/core/widgets/custem_images.dart';
import 'package:my_app/features/botton_nav_screen/presentation/view/screens_nav.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarContainer(text: 'العربة '),

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
