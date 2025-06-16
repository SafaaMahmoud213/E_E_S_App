import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/controller/checkbox_cubit/checkbox_cubit.dart';
import 'package:my_app/controller/filter_cubit/switch_cubit.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/widgets.dart/button.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

List<String> options = ["option1", "option2", "option3"];

class _FilterScreenState extends State<FilterScreen> {
  String selectedOption = options[0];

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
                  Text("تصفية حسب", style: TextStyle(fontSize: 18, color: AppColors.textColor)),
                  Divider(color: Colors.grey, thickness: 1),
                  Row(
                    children: [
                      Text(
                        "طريقة الدفع",
                        style: TextStyle(fontSize: 16, color: AppColors.textColor),
                      ),
                      Spacer(),
                      Text("اجل", style: TextStyle(fontSize: 13, color: AppColors.textColor)),
                      10.wi,
                      BlocBuilder<SwitchCubit, bool>(
                        builder: (BuildContext context, state) {
                          return Switch(
                            activeColor: Colors.white,
                            inactiveTrackColor: Colors.grey,
                            inactiveThumbColor: Colors.white,
                            activeTrackColor: AppColors.accentColor,
                            padding: EdgeInsets.all(2),
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
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
                  Row(
                    children: [
                      Column(
                        children: [
                          Text("عدد المنتج"),
                          ...List.generate(
                            3,
                            (index) => Row(
                              children: [
                                BlocBuilder<CheckboxCubit, bool>(
                                  builder: (BuildContext context, state) {
                                    return Checkbox(
                                      activeColor: AppColors.accentColor,
                                      checkColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      side: BorderSide(color: Colors.grey),

                                      value: state,
                                      onChanged: (bool? value) {
                                        context.read<CheckboxCubit>().isActive(value);
                                      },
                                    );
                                  },
                                ),
                                Text(title[index]),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text(" العلامة التجارية"),
                          ...List.generate(
                            3,
                            (index) => Row(
                              children: [
                                Text(title1[index]),

                                Checkbox(
                                  activeColor: AppColors.accentColor,
                                  checkColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  side: BorderSide(color: Colors.grey),

                                  value: val1,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      val1 = value!;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
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
                  Text("أجدد العروض ", style: TextStyle(fontSize: 13, color: AppColors.textColor)),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 10, right: 10),
              padding: EdgeInsets.all(20),
              width: 327.w,

              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade100),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("ترتيب حسب ", style: TextStyle(fontSize: 18, color: AppColors.textColor)),
                  12.hi,
                  Divider(color: Colors.grey, height: 0, thickness: 0.5),
                  ListTile(
                    title: Text("الأكثر مبيعًا"),
                    leading: Radio(
                      value: options[0],
                      groupValue: selectedOption,
                      onChanged: (value) {
                        setState(() {
                          selectedOption = value!;
                        });
                      },
                    ),
                  ),
                  Divider(color: Colors.grey, height: 0, thickness: 0.5),
                  ListTile(
                    title: Text("الأحدث "),
                    leading: Radio(
                      value: options[1],
                      groupValue: selectedOption,
                      onChanged: (value) {
                        setState(() {
                          selectedOption = value!;
                        });
                      },
                    ),
                  ),
                  Divider(color: Colors.grey, height: 0, thickness: 0.5),
                  ListTile(
                    title: Text("الأقل سعرا"),
                    leading: Radio(
                      value: options[2],
                      groupValue: selectedOption,
                      onChanged: (value) {
                        setState(() {
                          selectedOption = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            20.hi,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                AppButton(onPressed: () {}, text: "تطبيق"),
                12.wi,
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text("تراجع", style: TextStyle(fontSize: 18, color: Colors.red)),
                ),
              ],
            ),
            10.hi,
          ],
        ),
      ),
    );
  }
}
