import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/utils/navigator.dart';
import 'package:my_app/core/widgets/button.dart';
import 'package:my_app/features/cart/presentation/views/cart_screen.dart';
import 'package:my_app/features/home/presentation/widget/custum_container.dart';
import 'package:my_app/features/home/presentation/widget/order_details.dart';

class CurrentBillsScreen extends StatefulWidget {
  const CurrentBillsScreen({super.key});

  @override
  State<CurrentBillsScreen> createState() => _CurrentBillsScreenState();
}

class _CurrentBillsScreenState extends State<CurrentBillsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16),
      width: 400.w,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustumContainer(),

          20.hi,
          Divider(color: Colors.grey.shade300, thickness: 1),
          7.hi,
          Text(
            "الطلبية قيد المراجعة من المورد",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xFFD69448),
            ),
          ),
          8.hi,
          Text(
            "وسيتم الرد خلال أيام عمل",
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.textColor,
            ),
          ),
          20.hi,
          Row(
            children: [
              Expanded(
                child: AppButton(
                  onPressed: () {
                    AppNavigator().push(page: CartScreen());
                  },
                  text: "تعديل الطلب",
                  color: Colors.white,
                ),
              ),
              10.wi,
              Expanded(
                child: AppButton(
                  onPressed: () {
                    AppNavigator().push(page: OrderDetails());
                  },
                  text: "تفاصيل الفاتورة",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
