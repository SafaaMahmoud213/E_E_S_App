import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/utils/navigator.dart';
import 'package:my_app/core/widgets/button.dart';
import 'package:my_app/features/botton_nav_screen/presentation/view/screens_nav.dart';
import 'package:my_app/features/home/presentation/widget/custum_container.dart';
import 'package:my_app/features/home/presentation/widget/order_details.dart';

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
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
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
