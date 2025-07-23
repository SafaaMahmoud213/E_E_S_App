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
import 'package:my_app/core/utils/navigator.dart';
import 'package:my_app/core/widgets/button.dart';
import 'package:my_app/features/auth/presentation/view/signup_screen/signup.dart';
import 'package:my_app/features/auth/presentation/widgets/botton_login.dart';
import 'package:my_app/generated/locale_keys.g.dart';

import '../../../../core/widgets/custem_images.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();

    return Scaffold(
      key: loginCubit.scaffoldKey,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          key: loginCubit.formKey,
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
                controller: loginCubit.phoneController,
                validator: (value) => AppValidator.validatePhone(value),
                keyboardType: TextInputType.phone,
                labelText: "ادخل رقم الموبايل",
                prefixIcon: const Icon(
                  Icons.phone_android_outlined,
                  color: AppColors.secondaryColor,
                ),
              ),
              72.hi,
              ButtonLogIn(),
              40.hi,
              Text(
                LocaleKeys.anoutheraccount.tr(),
                style: TextStyle(
                  fontSize: 16.sp,
                  color: AppColors.textColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              20.hi,
              AppButton(
                onPressed: () {
                  AppNavigator().push(page: const SignUpScreen());
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
