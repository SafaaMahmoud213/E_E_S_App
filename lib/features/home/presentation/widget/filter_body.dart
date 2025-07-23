import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';

class FilterBody extends StatefulWidget {
  const FilterBody({super.key});

  @override
  State<FilterBody> createState() => _FilterBodyState();
}

List<String> options = ["option1", "option2", "option3"];

class _FilterBodyState extends State<FilterBody> {
  String selectedOption = options[0];
  @override
  Widget build(BuildContext context) {
    return Container(
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
          Text(
            "ترتيب حسب ",
            style: TextStyle(fontSize: 18, color: AppColors.textColor),
          ),
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
    );
  }
}
