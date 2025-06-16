import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/constant/images.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/utils/navigator.dart';
import 'package:my_app/core/widgets.dart/custem_images.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(right: 20.h),
            width: double.infinity,
            height: 145.h,
            decoration: BoxDecoration(
              color: AppColors.secondaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  width: 40.w,
                  height: 40.h,
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        AppNavigator().pop();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,

                        size: 15.sp,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ),
                60.wi,
                Text(
                  ' الإشعارات ',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          130.hi,
          CustomImage(url: AppImages.noti, width: 200.w, height: 200.h),
          20.hi,
          Text(
            "لا توجد إشعارات حتي الان",
            style: TextStyle(
              fontSize: 18.sp,
              color: AppColors.titleLight,
              fontWeight: FontWeight.w600,
            ),
          ),
          10.hi,
          Text(
            textAlign: TextAlign.center,
            "هنا ستظهر لك الإشعارات من التطبيق  في حين   \nوجود إشعارات جديدة",
            style: TextStyle(
              fontSize: 13.sp,
              color: AppColors.titleLight,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class NewNotification extends StatefulWidget {
  const NewNotification({super.key});

  @override
  State<NewNotification> createState() => _NewNotificationState();
}

class _NewNotificationState extends State<NewNotification> {
  List<String> title = ["فواتيري", "المحفظة"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(right: 20.h),
            width: double.infinity,
            height: 145.h,
            decoration: BoxDecoration(
              color: AppColors.secondaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  width: 40.w,
                  height: 40.h,
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        AppNavigator().pop();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,

                        size: 15.sp,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ),
                60.wi,
                Text(
                  ' الإشعارات ',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          32.hi,
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "اليوم",
              style: TextStyle(
                fontSize: 18.sp,
                color: AppColors.textColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 2,
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
                              child: CustomImage(url: AppImages.logo2, width: 65.w, height: 20.h),
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
                                fontSize: 16.sp,
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
          ),
        ],
      ),
    );
  }
}
