import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';

// ignore: must_be_immutable
class AppButton extends StatelessWidget {
  Function()? onPressed;
  String text;
  Color? color;
  bool isIcon;
  AppButton({
    super.key,
    required this.onPressed,
    this.isIcon = false,
    required this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(
          color ?? AppColors.primaryColor,
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        ),
        maximumSize: WidgetStateProperty.all<Size>(Size(343.w, 51.h)),
        minimumSize: WidgetStateProperty.all<Size>(Size(170.w, 51.h)),
      ),
      onPressed: () async {
        bool isConnect = await checkNetworkConnectivity();
        isConnect ? onPressed!() : null;
      },
      child:
          isIcon
              ? Row(children: [])
              : Text(
                text,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: color == null ? Colors.white : AppColors.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
    );
  }

  Future<bool> checkNetworkConnectivity() async {
    try {
      final result = await Connectivity().checkConnectivity();
      return result.first != ConnectivityResult.none;
    } catch (e) {
      return false;
    }
  }
}
