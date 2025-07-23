import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart' show AppColors;
import 'package:my_app/core/constant/images.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/widgets/custem_images.dart';

class NotificationBody extends StatelessWidget {
  NotificationBody({super.key});
  List<String> title = ["فواتيري", "المحفظة"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: title.length,
      itemBuilder:
          (context, i) => Container(
            margin: EdgeInsets.all(8.0),
            width: 343.w,
            child: Column(
              children: [
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
                    10.wi,
                    Text(
                      "عميلنا العزيز تم رد 50 ج.م رصيد مرتجع في \nالمحفظة من الشركة المصرية للحلول\n الكهربائية - فاتورة رقم ",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: AppColors.titleLight,
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: Container(
                    width: 78.w,
                    height: 31.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1),
                      color: AppColors.primaryColor,
                    ),
                    child: Center(
                      child: Text(
                        title[i],
                        style: TextStyle(
                          fontSize: 11.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
