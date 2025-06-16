import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/textform.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/widgets.dart/button.dart';

import '../../../core/constant/colors.dart';

class SighUpPage2 extends StatefulWidget {
  const SighUpPage2({super.key});

  @override
  State<SighUpPage2> createState() => _SighUpPage2State();
}

class _SighUpPage2State extends State<SighUpPage2> {
  String? selected;
  String? selected1;
  String? selected3;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "اسم المنشأة",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: AppColors.textColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            AppTextForm(
              padding: EdgeInsets.all(16.0),
              labelText: "ادخل اسم المنشأة",
              prefixIcon: Icon(Icons.receipt_outlined),
              validator: (validator) {
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  Text(
                    "نوع المنشأة",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  150.wi,
                  Text(
                    "المحافظة",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  width: 180,
                  height: 48,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[50],
                  ),
                  child: DropdownButton(
                    underline: const SizedBox(),
                    isExpanded: true,
                    iconSize: 30,
                    icon: Icon(Icons.keyboard_arrow_down, color: Colors.grey),
                    items:
                        ["محل ادوات كهربائيه", "محل ادوات ", "محل  "]
                            .map(
                              (e) => DropdownMenuItem(
                                value: e,
                                child: Text(
                                  e,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                    hint: Text(
                      "اختر نوع المنشأة",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onChanged: (val) {
                      setState(() {
                        selected = val;
                      });
                    },
                    value: selected,
                  ),
                ),

                10.wi,
                Container(
                  width: 120,
                  height: 48,
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[50],
                  ),
                  child: DropdownButton(
                    isExpanded: true,
                    underline: const SizedBox(),
                    iconSize: 30,

                    icon: Icon(Icons.keyboard_arrow_down, color: Colors.grey),
                    items:
                        ["القاهرة", "الجيزة", "الاسكندرية"]
                            .map(
                              (e) => DropdownMenuItem(
                                value: e,
                                child: Text(
                                  e,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                    hint: Text(
                      "القاهرة",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onChanged: (val) {
                      setState(() {
                        selected1 = val;
                      });
                    },
                    value: selected1,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  Text(
                    "المنطقة",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  150.wi,
                  Text(
                    "بالقرب من",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  width: 130,
                  height: 48,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[50],
                  ),
                  child: DropdownButton(
                    underline: const SizedBox(),
                    isExpanded: true,
                    iconSize: 30,
                    icon: Icon(Icons.keyboard_arrow_down, color: Colors.grey),
                    items:
                        ["مدينة نصر", "القاهرة", "الجيزة"]
                            .map(
                              (e) => DropdownMenuItem(
                                value: e,
                                child: Text(
                                  e,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                    hint: Text(
                      "اختر المنطقة",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onChanged: (val) {
                      setState(() {
                        selected3 = val;
                      });
                    },
                    value: selected3,
                  ),
                ),

                20.wi,
                Container(
                  width: 130,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey.shade50),
                  ),
                  child: AppTextForm(
                    keyboardType: TextInputType.text,
                    labelText: "",
                    validator: (val) {
                      return null;
                    },
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "إسم المندوب",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: AppColors.textColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            AppTextForm(
              padding: EdgeInsets.all(16.0),
              prefixIcon: Icon(Icons.person),
              keyboardType: TextInputType.text,
              labelText: "ادخل اسم المندوب",
              validator: (val) {
                return null;
              },
            ),
            94.hi,
            Center(
              child: AppButton(
                ismaximumSize: true,
                onPressed: () {},
                text: "تأكيد إنشاء حساب جديد",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
