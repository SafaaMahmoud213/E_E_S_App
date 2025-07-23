import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/utils/navigator.dart';
import 'package:my_app/core/widgets/button.dart';
import 'package:my_app/features/botton_nav_screen/presentation/view/screens_nav.dart';

class CanceledOrder extends StatefulWidget {
  const CanceledOrder({super.key});

  @override
  State<CanceledOrder> createState() => _CanceledOrderState();
}

List<String> options = [
  "option1",
  "option2",
  "option3",
  "option4",
  "option5",
  "option6",
  "option7",
];

class _CanceledOrderState extends State<CanceledOrder> {
  String selectedOption = options[0];
  List<String> title = [
    "غيرت رأيي",
    "طلبية متأخرة عن ميعاد التوصيل",
    "يوم التوصيل غير مناسب",
    "وجود نواقص في الطلبية",
    "غيرت رأيي",
    "طلبية متأخرة عن ميعاد التوصيل",
    "يوم التوصيل غير مناسب",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16),
        height: 720.h,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 139,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(2),
                ),
                height: 5,
              ),
            ),
            24.hi,
            Text(
              "هل تريد إلغاء الطلبية ؟",
              style: TextStyle(
                fontSize: 16,
                color: AppColors.textColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            16.hi,
            Text(
              "اختر سبب الإلغاء من الأسباب الاتية",
              style: TextStyle(
                fontSize: 16,
                color: AppColors.titleLight,
                fontWeight: FontWeight.w500,
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: options.length,
              itemBuilder: (context, i) {
                return ListTile(
                  title: Text(
                    title[i],
                    style: TextStyle(
                      fontSize: 13,
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  leading: Radio(
                    value: options[i],
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value!;
                      });
                    },
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(height: 1);
              },
            ),
            AppButton(
              onPressed: () {
                AwesomeDialog(
                  context: context,
                  animType: AnimType.bottomSlide,
                  dialogType: DialogType.info,
                  body: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "تم إلغاء طلبك",
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.titleLight,
                          ),
                        ),
                        16.hi,
                        Text(
                          "إذهب إلي الرئيسية واطلب مرة \nأخري واستمتع بتجربة شراء أفضل",
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.titleLight,
                          ),
                        ),
                        32.hi,
                        AppButton(
                          onPressed: () {
                            AppNavigator().push(page: ScreensNav());
                          },

                          ismaximumSize: true,
                          text: "الرئيسية",
                        ),
                      ],
                    ),
                  ),
                ).show();
              },
              ismaximumSize: true,
              text: "تأكيد",
            ),
            12.hi,
            AppButton(
              onPressed: () {
                AppNavigator().pop();
              },
              color: Colors.white,
              ismaximumSize: true,
              text: "العودة",
            ),
          ],
        ),
      ),
    );
  }
}
