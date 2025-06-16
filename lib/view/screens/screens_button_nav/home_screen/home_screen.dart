import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/constant/images.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/widgets.dart/custem_images.dart';
import 'package:my_app/view/screens/screens_button_nav/home_screen/carouse_slider.dart';
import 'package:my_app/view/screens/screens_button_nav/home_screen/filter.dart';
import 'package:my_app/view/screens/screens_button_nav/home_screen/grid_screen.dart';
import 'package:my_app/view/screens/screens_button_nav/home_screen/search_delegat.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  int currentIndex = 0;
  List<String> title = ["الكل", "لمبات فلورسنت وعادة", "لمبات ليد"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(right: 20.h),
              width: double.infinity,
              height: 171.h,
              decoration: BoxDecoration(
                color: AppColors.accentColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "الشركة المصرية للحلول الكهربائية",
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  20.hi,
                  CustomImage(url: AppImages.logo2, height: 50, width: 160),
                ],
              ),
            ),
            Row(
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
                          style: TextStyle(fontSize: 16, color: AppColors.titleLight),
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
            ),
            CarouseSliderScreen(),
            SizedBox(
              height: 40.h,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: title.length,
                itemBuilder:
                    (context, i) => GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = i;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 16),
                        padding: EdgeInsets.all(5),
                        height: 38,
                        decoration: BoxDecoration(
                          color: currentIndex == i ? AppColors.accentColor : Colors.white,
                          borderRadius: BorderRadius.circular(5),

                          border: Border.all(color: Colors.grey.shade100),
                        ),
                        child: Text(
                          title[i],
                          style: TextStyle(
                            fontSize: 16,
                            color: currentIndex == i ? Colors.white : AppColors.titleLight,
                          ),
                        ),
                      ),
                    ),
              ),
            ),
            20.hi,
            GridScreen(),
          ],
        ),
      ),
    );
  }
}
