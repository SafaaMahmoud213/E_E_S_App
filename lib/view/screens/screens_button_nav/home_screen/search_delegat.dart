import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/constant/images.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/widgets.dart/custem_images.dart';

class SearchScreen extends SearchDelegate {
  List<String> searchItem = [' لمبات فلورسنت وعادة', 'لمبات ليد ', 'Egypt Panel ', 'Siemens '];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child:
          query == ""
              ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImage(url: AppImages.search, height: 200, width: 200),
                  20.hi,
                  const Text(
                    "  لا توجد عمليات بحث",
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
              : Text(query, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List filter = searchItem.where((e) => e.contains(query)).toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        40.hi,
        Text("الأكثر بحثًا", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        20.hi,
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: query == "" ? searchItem.length : filter.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                query = query == "" ? searchItem[index] : filter[index];
                showResults(context);
              },
              child: Container(
                margin: const EdgeInsets.all(5.0),
                height: 38.h,

                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade200, width: 1.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text(
                    query == "" ? searchItem[index] : filter[index],
                    style: const TextStyle(color: AppColors.titleLight, fontSize: 16),
                  ),
                ),
              ),
            );
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 2.5,
          ),
        ),
      ],
    );
  }
}
