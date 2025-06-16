import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/utils/navigator.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Call 02 5248 5254',
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              20.wi,
              Icon(Icons.phone, size: 24, color: AppColors.primaryColor),
            ],
          ),
          10.hi,
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(Colors.red.shade100),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                ),
              ),
              onPressed: () {
                AppNavigator().pop();
              },
              child: Text("تراجع", style: TextStyle(fontSize: 16.sp, color: Colors.red)),
            ),
          ),
        ],
      ),
    );
  }
}
