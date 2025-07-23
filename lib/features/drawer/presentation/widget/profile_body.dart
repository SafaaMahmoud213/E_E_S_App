import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/textform.dart';
import 'package:my_app/core/utils/app_validator.dart';

class ProfileBody extends StatelessWidget {
  ProfileBody({super.key, this.isTextTwo = false});
  bool isTextTwo;

  List<String> text = ["نوع المنشأة ", " رقم الموبايل "];
  List<String> text2 = ["إسم المنشأة", " موقع المنشأة"];
  List<String> labelText = ["محل أدوات كهربائية", "+20102154845  "];
  List<String> labelText2 = [
    "الفجر للأدوات الكهربائية",
    "القاهرة - مدينة نصر - الحي العاشر ",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: text.length,

      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                isTextTwo ? text2[index] : text[index],
                style: TextStyle(fontSize: 16.sp, color: Colors.grey.shade900),
              ),
            ),
            AppTextForm(
              keyboardType: TextInputType.text,
              validator: (va) => AppValidator.validateName(va!),
              padding: EdgeInsets.all(16),
              labelText: isTextTwo ? labelText2[index] : labelText[index],
              prefixIcon: Icon(Icons.person),
            ),
          ],
        );
      },
    );
  }
}
