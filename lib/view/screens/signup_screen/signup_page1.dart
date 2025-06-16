import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/controller/signup_cubit/signup_cubit.dart';
import 'package:my_app/controller/signup_cubit/signup_state.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/constant/textform.dart';
import 'package:my_app/core/utils/app_validator.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/utils/navigator.dart';
import 'package:my_app/core/widgets.dart/button.dart';
import 'package:my_app/generated/locale_keys.g.dart';
import 'package:my_app/view/screens/home_intro.dart';
import 'package:my_app/view/screens/login.dart';

class SignUpPage1 extends StatefulWidget {
  const SignUpPage1({super.key});

  @override
  State<SignUpPage1> createState() => _SignUpPage1State();
}

class _SignUpPage1State extends State<SignUpPage1> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              LocaleKeys.name.tr(),
              style: TextStyle(
                fontSize: 16.sp,
                color: AppColors.greyColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          12.hi,
          AppTextForm(
            padding: EdgeInsets.only(right: 16.h, left: 16.h),
            keyboardType: TextInputType.name,
            controller: _nameController,
            labelText: "ادخل اسمك ثلاثي",
            prefixIcon: Icon(Icons.person_2_outlined),
            validator: (value) => AppValidator.validateName(value!),
          ),
          24.hi,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              LocaleKeys.phone.tr(),
              style: TextStyle(
                fontSize: 16.sp,
                color: AppColors.greyColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          12.hi,
          AppTextForm(
            padding: EdgeInsets.only(right: 16.h, left: 16.h),
            keyboardType: TextInputType.phone,
            controller: _phoneController,
            labelText: "ادخل رقم الموبايل",
            validator: (value) => AppValidator.validatePhone(value),
            prefixIcon: Icon(Icons.phone_iphone_rounded),
          ),
          24.hi,
          BlocConsumer<SignupCubit, SignupState>(
            listener: (context, state) {
              if (state is SignupFailure) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message)));
              }
              if (state is SignupSuccess) {
                AppNavigator().push(page: HomeIntro());
              }
            },
            builder: (context, state) {
              return state is SignupLoading
                  ? Center(child: CircularProgressIndicator())
                  : Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: AppButton(
                      ismaximumSize: true,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<SignupCubit>().signUp(
                            _nameController.text,
                            _phoneController.text,
                          );
                        }
                      },
                      isIcon: true,
                      icon: Icons.arrow_forward,
                      text: "متابعة",
                    ),
                  );
            },
          ),
          24.hi,

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                LocaleKeys.haveaccount.tr(),
                style: TextStyle(
                  fontSize: 16.sp,
                  color: AppColors.textColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              InkWell(
                onTap: () {
                  AppNavigator().push(page: LogInScreen());
                },
                child: Text(
                  "سجل الدخول الان",
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
    );
  }
}
