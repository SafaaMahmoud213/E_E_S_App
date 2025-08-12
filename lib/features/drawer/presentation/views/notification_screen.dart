import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/features/drawer/presentation/widget/appbar_container.dart';
import 'package:my_app/features/drawer/presentation/widget/notification_body.dart';

class NewNotification extends StatefulWidget {
  const NewNotification({super.key});

  @override
  State<NewNotification> createState() => _NewNotificationState();
}

class _NewNotificationState extends State<NewNotification> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppbarContainer(text: ' الإشعارات '),
          32.hi,
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "اليوم",
              style: TextStyle(
                fontSize: 18.sp,
                color: AppColors.textColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          NotificationBody(),
        ],
      ),
    );
  }
}
