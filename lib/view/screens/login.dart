import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/constant/images.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/widgets.dart/custem_images.dart';
import '../../core/widgets.dart/button.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              114.hi,
              CustomImage(url: AppImages.logo2, width: 217, height: 70),
              24.hi,
              Text(
                "أهلًا بك!",
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              10.hi,
              Text(
                "دلوقتي تقدر تشوف الاف المنتجات \n وتعمل طلبيتك بسهولة. ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.textColor,
                  fontWeight: FontWeight.w400,
                ),
              ),

              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  "رقم الموبايل",
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.textColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              20.hi,
              TextFormField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value!.isEmpty || value.length <= 11) {
                    return " يجب ادخل رقم الموبايل صحيح";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  label: Row(
                    children: [
                      Icon(Icons.phone_iphone_outlined, color: Colors.grey),
                      Text("ادخل رقم الموبايل"),
                    ],
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: AppColors.primaryColor,
                      width: 1,
                    ),
                  ),
                ),
              ),
              72.hi,
              Center(
                child: AppButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (c) {
                          return AlertDialog(
                            title: Text(
                              "التحقق من رقم التليفون للتسجيل",
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            content: Text(
                              textAlign: TextAlign.center,
                              "برجاء إدخال رمز التحقق المٌرسل علي رقم \n 01254815515",
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: AppColors.textColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          );
                        },
                      );
                    }
                  },
                  text: 'تسجيل الدخول',
                ),
              ),
              34.hi,
              Text(
                "ليس لديك حساب؟",
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.textColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              14.hi,
              AppButton(
                onPressed: () {},
                color: Colors.white,
                text: "إنشاء حساب جديد,",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
