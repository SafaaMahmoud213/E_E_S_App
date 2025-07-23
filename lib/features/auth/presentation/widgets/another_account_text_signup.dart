import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/utils/navigator.dart';
import 'package:my_app/features/auth/presentation/view/login.dart';

import '../../../../generated/locale_keys.g.dart' show LocaleKeys;

class AnotherAccountSignup extends StatelessWidget {
  const AnotherAccountSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          LocaleKeys.haveaccount.tr(),
          style: TextStyle(
            fontSize: 10.sp,
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
              fontSize: 10.sp,
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
