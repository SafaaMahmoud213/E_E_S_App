import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/constant/images.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/widgets/button.dart';
import 'package:my_app/core/widgets/custem_images.dart';
import 'package:my_app/features/drawer/presentation/widget/appbar_container.dart';
import 'package:my_app/features/drawer/presentation/widget/profile_body.dart';

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
              AppbarContainer(text: ' البيانات الشخصية'),
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
                    Text(
                      "تعديل",
                      style: TextStyle(fontSize: 16.sp, color: Colors.red),
                    ),
                    10.wi,
                    CustomImage(
                      url: AppImages.edit,
                      width: 24.h,
                      height: 24.h,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
              32.hi,
              ProfileBody(),
              Divider(),
              25.hi,
              Padding(
                padding: const EdgeInsets.only(right: 20),
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
              ProfileBody(isTextTwo: true),

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
