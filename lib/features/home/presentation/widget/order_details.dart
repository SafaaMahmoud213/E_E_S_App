import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/constant/images.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/utils/navigator.dart';
import 'package:my_app/core/widgets/button.dart';
import 'package:my_app/core/widgets/custem_images.dart';
import 'package:my_app/features/botton_nav_screen/presentation/view/screens_nav.dart';
import 'package:my_app/features/cart/presentation/views/cart_screen.dart';
import 'package:my_app/features/home/presentation/widget/canceled_order.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              height: 145.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.accentColor,
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
                    ' تفاصيل الطلبية ',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            43.hi,
            Row(
              children: [
                CustomImage(url: AppImages.logo, width: 66, height: 20),
                8.wi,
                Text(
                  "الشركة المصرية للحلول الكهربائية",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.titleLight,
                  ),
                ),
              ],
            ),

            10.hi,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppButton(
                onPressed: () {
                  AppNavigator().pushReplaceMent(page: ScreensNav());
                },

                ismaximumSize: true,
                text: "اطلب المزيد من شركة المصرية",
              ),
            ),

            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder:
                  (context, i) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          width: 81.w,
                          height: 70.h,
                          child: Center(
                            child: CustomImage(
                              url: AppImages.lip,
                              width: 41.w,
                              height: 60.h,
                            ),
                          ),
                        ),

                        Text(
                          "لمبات سنترا ليد قلاووظ كروي\n وورم مصري - 3 وات",
                          style: TextStyle(
                            fontSize: 13,
                            color: AppColors.textColor,
                          ),
                        ),
                        Text(
                          "5،25 ج.م \nعدد 2 كرتونة",
                          style: TextStyle(
                            fontSize: 13,
                            color: AppColors.secondaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
              separatorBuilder: (BuildContext context, int index) {
                return Divider();
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "التوصيل",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.titleLight,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "خلال 3 أيام",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xffD69448),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "طريقة الدفع",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: AppColors.titleLight,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 60.w,
                    height: 32.h,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Center(
                      child: Text(
                        "كاش  ",
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: AppColors.secondaryColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "إجمالي الطلب",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.titleLight,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "6،520 ج.م",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xffD69448),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  AppButton(
                    onPressed: () {
                      AppNavigator().push(page: CartScreen());
                    },
                    text: "تعديل الطلب",
                    color: Colors.white,
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      AwesomeDialog(
                        context: context,
                        animType: AnimType.bottomSlide,
                        dialogType: DialogType.warning,
                        body: Column(
                          children: [
                            Center(
                              child: Text(
                                "تقدر تعدل علي طلبك بدلًا من الإلغاء",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.titleLight,
                                ),
                              ),
                            ),
                            10.hi,
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  AppButton(
                                    onPressed: () {
                                      AppNavigator().push(page: CartScreen());
                                    },
                                    text: "تعديل الطلب",
                                    color: Colors.white,
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      AppNavigator().pop();
                                      _scaffoldKey.currentState!
                                          .showBottomSheet(
                                            (context) => CanceledOrder(),
                                          );
                                    },
                                    child: Text(
                                      "الطلب الغاء",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ).show();
                    },
                    child: Text(
                      "الطلب الغاء",
                      style: TextStyle(fontSize: 16, color: Colors.red),
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
