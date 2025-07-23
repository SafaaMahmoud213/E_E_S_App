import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/constant/images.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/widgets/button.dart';
import 'package:my_app/core/widgets/custem_images.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({super.key});

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  int currentIndex = 0;

  List images = [
    AppImages.lip,
    AppImages.lip1,
    AppImages.lip2,
    AppImages.lip,
    AppImages.lip1,
    AppImages.lip2,
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,

      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        childAspectRatio: 0.42,

        crossAxisCount: 2,
      ),
      itemCount: images.length,
      itemBuilder:
          (BuildContext context, int index) => Container(
            padding: EdgeInsets.all(8),

            width: 163,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.shade100),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                22.hi,
                Center(
                  child: CustomImage(
                    url: images[index],
                    height: 100,
                    width: 100,
                  ),
                ),
                Text(
                  " لمبات سنترا ليد قلاووظ \n كروي وورم مصري - 3 وات",
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: AppColors.titleLight,
                  ),
                ),
                8.hi,
                Text(
                  "  5.25 ج.م",
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: AppColors.primaryColor,
                  ),
                ),
                8.hi,
                Text(
                  "أقصي حد للطلب 350 قطعة",
                  style: TextStyle(fontSize: 10.sp, color: AppColors.textColor),
                ),
                16.hi,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "كرتونة 50 X",
                      style: TextStyle(
                        fontSize: 8.sp,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Icon(Icons.add, color: Colors.white, size: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                40.hi,
                Center(
                  child: AppButton(
                    onPressed: () {},
                    text: "50",
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
