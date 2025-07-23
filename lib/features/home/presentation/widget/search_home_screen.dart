import 'package:flutter/material.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/constant/images.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/widgets/custem_images.dart';
import 'package:my_app/features/home/presentation/widget/filter_home.dart';
import 'package:my_app/features/home/presentation/widget/search_delegat.dart';

class SearchHomeScreen extends StatelessWidget {
  const SearchHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            showSearch(context: context, delegate: SearchScreen());
          },
          child: Container(
            margin: EdgeInsets.only(right: 20, left: 10, top: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey.shade100),
            ),
            width: 269,
            height: 48,
            child: Row(
              children: [
                Icon(Icons.search_outlined, color: Colors.grey),
                5.wi,
                Text(
                  "ابحث عن منتجات أو علامة تجارية",
                  style: TextStyle(fontSize: 10, color: AppColors.titleLight),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => FilterScreen(),
            );
          },
          child: Container(
            margin: EdgeInsets.only(left: 10, top: 30),
            width: 50,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey.shade100),
            ),
            child: Center(child: CustomImage(url: AppImages.filter)),
          ),
        ),
      ],
    );
  }
}
