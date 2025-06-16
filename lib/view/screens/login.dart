import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/controller/login_cubit/login_cubit.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/constant/images.dart';
import 'package:my_app/core/constant/textform.dart';
import 'package:my_app/core/utils/app_validator.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/widgets.dart/custem_images.dart';
import 'package:my_app/generated/locale_keys.g.dart';
import 'package:my_app/view/screens/signup_screen/signup.dart';

import '../../core/utils/navigator.dart';
import '../../core/widgets.dart/button.dart';
import '../../core/widgets.dart/pin.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  double minBound = 0;

  double upperBound = 1.0;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _phoneController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              114.hi,
              CustomImage(url: AppImages.logo2, width: 217, height: 70),
              24.hi,
              Text(
                LocaleKeys.Hello.tr(),
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              10.hi,
              Text(
                LocaleKeys.header.tr(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.textColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              30.hi,
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  LocaleKeys.phone.tr(),
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.textColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              50.hi,
              AppTextForm(
                controller: _phoneController,
                validator: (value) => AppValidator.validatePhone(value),
                keyboardType: TextInputType.phone,

                labelText: "ادخل رقم الموبايل",
                prefixIcon: const Icon(
                  Icons.phone_android_outlined,
                  color: AppColors.secondaryColor,
                ),
              ),

              72.hi,
              Center(
                child: BlocConsumer<LoginCubit, LoginState>(
                  listener: (context, state) {
                    if (state is LoginFailure) {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text(state.message)));
                    }
                    if (state is LoginSuccess) {
                      _scaffoldKey.currentState!.showBottomSheet(
                        (context) => Container(
                          width: double.infinity,
                          height: 600.h,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shadows: [
                              BoxShadow(
                                blurRadius: 5.0.sw,
                                spreadRadius: 2.0.sw,
                                color: const Color(0x11000000),
                              ),
                            ],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              ),
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: 100.w,
                                height: 6.h,
                                decoration: BoxDecoration(
                                  color: AppColors.greyColor,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                              ),
                              20.hi,
                              Text(
                                "التحقق من رقم التليفون للتسجيل",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: AppColors.secondaryColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              20.hi,
                              Text(
                                textAlign: TextAlign.center,
                                "برجاء إدخال رمز التحقق المٌرسل علي رقم \n 01254815515",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: AppColors.greyColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              40.hi,
                              PinputExample(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              ),
                              30.hi,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "لم يصلك كود بعد؟",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      color: AppColors.textColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  10.hi,
                                  InkWell(
                                    onTap: () {},
                                    child: Text(
                                      "إضغط هنا ",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: AppColors.primaryColor,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                  },
                  builder: (context, state) {
                    return state is LoginLoading
                        ? Center(child: CircularProgressIndicator())
                        : AppButton(
                          ismaximumSize: true,
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              context.read<LoginCubit>().logIn(_phoneController.text);
                            }
                          },
                          text: LocaleKeys.Login.tr(),
                        );
                  },
                ),
              ),
              40.hi,
              Text(
                LocaleKeys.anoutheraccount.tr(),
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.textColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              20.hi,
              AppButton(
                onPressed: () {
                  AppNavigator().push(page: SignUpScreen());
                },
                ismaximumSize: true,
                color: Colors.white,
                text: LocaleKeys.newaccount.tr(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
