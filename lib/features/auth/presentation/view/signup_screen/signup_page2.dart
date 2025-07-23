import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/textform.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/widgets/button.dart';
import 'package:my_app/features/auth/presentation/widgets/dropdownbutton_body_signup.dart';
import 'package:my_app/features/auth/presentation/widgets/signup2_body.dart';

import '../../../../../core/constant/colors.dart';

class SighUpPage2 extends StatefulWidget {
  const SighUpPage2({super.key});

  @override
  State<SighUpPage2> createState() => _SighUpPage2State();
}

class _SighUpPage2State extends State<SighUpPage2> {
  String? selected;
  String? selected1;
  String? selected3;
  List<String> textOptions = ["محل ادوات كهربائيه", "محل ادوات ", "محل  "];

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
            Signup2Body(text1: "نوع المنشأة", text2: "المحافظة"),

            20.hi,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownbuttonBodySignup<String>(
                  items:
                      textOptions.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        );
                      }).toList(),
                  width: 180.w,
                  height: 48.h,
                  text: "اختر نوع المنشأة",
                  selectedValue: selected,
                  onChanged: (val) {
                    setState(() {
                      selected = val;
                    });
                  },
                ),

                DropdownbuttonBodySignup<String>(
                  items:
                      ["القاهرة", "الجيزة", "الاسكندرية"]
                          .map(
                            (e) => DropdownMenuItem<String>(
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
                  width: 150.w,
                  height: 48.h,
                  text: " المحافظة",
                  selectedValue: selected1,
                  onChanged: (val) {
                    setState(() {
                      selected1 = val;
                    });
                  },
                ),
              ],
            ),

            Signup2Body(text1: "المنطقة", text2: "بالقرب من"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownbuttonBodySignup<String>(
                  items:
                      ["مدينة نصر", "القاهرة", "الجيزة"]
                          .map(
                            (e) => DropdownMenuItem<String>(
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
                  width: 150.w,
                  height: 48.h,
                  text: "اختر المنطقة",
                  selectedValue: selected3,
                  onChanged: (val) {
                    setState(() {
                      selected3 = val;
                    });
                  },
                ),
                20.wi,
                Container(
                  width: 150,
                  height: 48,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey.shade50),
                  ),
                  child: Center(
                    child: AppTextForm(
                      keyboardType: TextInputType.text,
                      labelText: "",
                      validator: (val) {
                        return null;
                      },
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "إسم المندوب",
                style: TextStyle(
                  fontSize: 12.sp,
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
            50.hi,
            Center(
              child: AppButton(
                ismaximumSize: true,
                onPressed: () {},
                text: "تأكيد إنشاء حساب جديد",
              ),
            ),
            20.hi,
          ],
        ),
      ),
    );
  }
}
