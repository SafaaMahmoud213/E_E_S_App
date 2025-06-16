import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/utils/navigator.dart';
import 'package:my_app/core/widgets.dart/button.dart';
import 'package:my_app/view/screens/screens_button_nav/home_screen/bill_screen/custum_container.dart';
import 'package:my_app/view/screens/screens_button_nav/home_screen/bill_screen/order_details.dart';
import 'package:my_app/view/screens/screens_button_nav/screens_nav.dart';

class PreviousBillScreen extends StatefulWidget {
  const PreviousBillScreen({super.key});

  @override
  State<PreviousBillScreen> createState() => _PreviousBillScreenState();
}

class _PreviousBillScreenState extends State<PreviousBillScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16),
      width: 400.w,
      height: 400,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustumContainer(),
          Divider(color: Colors.grey.shade300, thickness: 1),
          16.hi,

          AppButton(
            onPressed: () {
              AppNavigator().push(page: OrderDetails());
            },
            text: "تفاصيل الفاتورة",
            ismaximumSize: true,
            color: Colors.white,
          ),
          22.hi,
          AppButton(
            onPressed: () {
              AppNavigator().pushReplaceMent(page: ScreensNav());
            },
            text: "اطلب المزيد من شركة المصرية",
            ismaximumSize: true,
          ),
        ],
      ),
    );
  }
}
