import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/constant/images.dart';
import 'package:my_app/core/constant/textform.dart';
import 'package:my_app/core/utils/app_validator.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/utils/navigator.dart';
import 'package:my_app/core/widgets.dart/button.dart';
import 'package:my_app/core/widgets.dart/custem_images.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
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
                      ' البيانات الشخصية',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "بياناتي",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    Spacer(),
                    Text("تعديل", style: TextStyle(fontSize: 16.sp, color: Colors.red)),
                    10.wi,
                    CustomImage(url: AppImages.edit, width: 24.h, height: 24.h, color: Colors.red),
                  ],
                ),
              ),
              32.hi,
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Text(
                  "نوع المنشأة ",
                  style: TextStyle(fontSize: 16.sp, color: Colors.grey.shade900),
                ),
              ),
              AppTextForm(
                keyboardType: TextInputType.text,
                validator: (va) => AppValidator.validateName(va!),
                padding: EdgeInsets.all(16),
                labelText: "محل أدوات كهربائية",
                prefixIcon: Icon(Icons.person),
              ),
              16.hi,
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Text(
                  " رقم الموبايل ",
                  style: TextStyle(fontSize: 16.sp, color: Colors.grey.shade900),
                ),
              ),
              AppTextForm(
                keyboardType: TextInputType.phone,
                padding: EdgeInsets.all(16),
                labelText: "+20102154845  ",
                validator: (va) => AppValidator.validateName(va!),
                prefixIcon: Icon(Icons.person),
              ),
              16.hi,
              Divider(color: Colors.grey.shade300, thickness: 1),
              20.hi,
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Text(
                  "بيانات المنشأة",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
              20.hi,
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Text(
                  "  إسم المنشأة ",
                  style: TextStyle(fontSize: 16.sp, color: Colors.grey.shade900),
                ),
              ),
              AppTextForm(
                keyboardType: TextInputType.phone,
                padding: EdgeInsets.all(16),
                labelText: "الفجر للأدوات الكهربائية  ",
                validator: (va) => AppValidator.validateName(va!),
                prefixIcon: Icon(Icons.person),
              ),
              20.hi,
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Text(
                  "  موقع المنشأة ",
                  style: TextStyle(fontSize: 16.sp, color: Colors.grey.shade900),
                ),
              ),
              AppTextForm(
                keyboardType: TextInputType.phone,
                padding: EdgeInsets.all(16),
                validator: (va) => AppValidator.validateName(va!),
                labelText: "القاهرة - مدينة نصر - الحي العاشر ",
                prefixIcon: Icon(Icons.person),
              ),
              20.hi,
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Text(
                  "  موقع المنشأة ",
                  style: TextStyle(fontSize: 16.sp, color: Colors.grey.shade900),
                ),
              ),
              AppTextForm(
                keyboardType: TextInputType.phone,
                validator: (va) => AppValidator.validateName(va!),
                padding: EdgeInsets.all(16),
                labelText: "القاهرة - مدينة نصر - الحي العاشر ",
                prefixIcon: Icon(Icons.person),
              ),

              35.hi,
              Center(
                child: AppButton(
                  ismaximumSize: true,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  text: "حفظ تعديل البيانات ",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
