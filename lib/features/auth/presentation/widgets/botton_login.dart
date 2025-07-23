import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/controller/login_cubit/login_cubit.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/widgets/button.dart';
import 'package:my_app/features/auth/presentation/widgets/pin.dart';
import 'package:my_app/generated/locale_keys.g.dart';

class ButtonLogIn extends StatefulWidget {
  const ButtonLogIn({super.key});

  @override
  State<ButtonLogIn> createState() => _ButtonLogInState();
}

class _ButtonLogInState extends State<ButtonLogIn> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginFailure) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));
          }
          if (state is LoginSuccess) {
            context
                .read<LoginCubit>()
                .scaffoldKey
                .currentState
                ?.showBottomSheet((context) => ContainerBody());
          }
        },
        builder: (context, state) {
          return state is LoginLoading
              ? Center(child: CircularProgressIndicator())
              : AppButton(
                ismaximumSize: true,
                onPressed: () {
                  if (context
                      .read<LoginCubit>()
                      .formKey
                      .currentState!
                      .validate()) {
                    context.read<LoginCubit>().logIn(
                      context.read<LoginCubit>().phoneController.text,
                    );
                  }
                },
                text: LocaleKeys.Login.tr(),
              );
        },
      ),
    );
  }
}

class ContainerBody extends StatelessWidget {
  const ContainerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
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
            "برجاء إدخال رمز التحقق المٌرسل علي رقم \n 01090625272",
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
    );
  }
}
