import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/utils/navigator.dart';
import 'package:my_app/core/widgets.dart/button.dart';
import 'package:my_app/view/screens/screens_button_nav/drawer_screens/call_screen.dart';
import 'package:my_app/view/screens/screens_button_nav/home_screen/bill_screen/custum_container.dart';
import 'package:my_app/view/screens/screens_button_nav/home_screen/bill_screen/order_details.dart';

class ConfirmBillScreen extends StatefulWidget {
  const ConfirmBillScreen({super.key});

  @override
  State<ConfirmBillScreen> createState() => _ConfirmBillScreenState();
}

class _ConfirmBillScreenState extends State<ConfirmBillScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16),
      width: 400.w,

      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustumContainer(isTrue: true),
          Divider(color: Colors.grey.shade300, thickness: 1),
          16.hi,

          AppButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (c) {
                  return CallScreen();
                },
              );
            },
            text: "اتصل بالمندوب",
            ismaximumSize: true,
            color: Colors.white,
          ),
          22.hi,
          AppButton(
            onPressed: () {
              AppNavigator().push(page: OrderDetails());
            },
            text: "تفاصيل الفاتورة",
            ismaximumSize: true,
          ),
        ],
      ),
    );
  }
}
