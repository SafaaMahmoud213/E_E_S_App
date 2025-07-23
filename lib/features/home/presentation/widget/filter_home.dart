import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/controller/filter_cubit/switch_cubit.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/features/home/presentation/widget/filter_body.dart';
import 'package:my_app/features/home/presentation/widget/filter_payment.dart';
import 'package:my_app/features/home/presentation/widget/filtter_botton.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool val = false;
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;

  List<String> title = ["كرتونة", "علبة", "قطعة"];
  List<String> title1 = ["Siemens", "Egyptpanel", "Siemens"];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenUtil().screenHeight * 0.9,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, left: 10, right: 10),
              padding: EdgeInsets.all(20),
              width: 327.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade100),

                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "تصفية حسب",
                    style: TextStyle(fontSize: 18, color: AppColors.textColor),
                  ),
                  Divider(color: Colors.grey, thickness: 1),
                  Row(
                    children: [
                      Text(
                        "طريقة الدفع",
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.textColor,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "اجل",
                        style: TextStyle(
                          fontSize: 13,
                          color: AppColors.textColor,
                        ),
                      ),
                      10.wi,
                      BlocBuilder<SwitchCubit, bool>(
                        builder: (BuildContext context, state) {
                          return Switch(
                            activeColor: Colors.white,
                            inactiveTrackColor: Colors.grey,
                            inactiveThumbColor: Colors.white,
                            activeTrackColor: AppColors.accentColor,
                            padding: EdgeInsets.all(2),
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            value: state,

                            onChanged: (bool value) {
                              context.read<SwitchCubit>().isActive(value);
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  Divider(color: Colors.grey, thickness: 1),
                  FilterPayment(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 10, right: 10),
              width: 327.w,
              height: 52.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade100),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Checkbox(
                    value: val2,
                    onChanged: (val) {
                      setState(() {
                        val2 = val!;
                      });
                    },
                  ),
                  Text(
                    "أجدد العروض ",
                    style: TextStyle(fontSize: 13, color: AppColors.textColor),
                  ),
                ],
              ),
            ),
            FilterBody(),
            20.hi,
            FiltterBotton(),
            10.hi,
          ],
        ),
      ),
    );
  }
}
