import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/constant/images.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/widgets/app_bar_container.dart';
import 'package:my_app/features/home/presentation/widget/carouse_slider_home.dart';
import 'package:my_app/features/home/presentation/widget/grid_home_screen.dart';
import 'package:my_app/features/home/presentation/widget/search_home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> image = [
    Image.asset(AppImages.frame),
    Image.asset(AppImages.frame),
    Image.asset(AppImages.frame),
  ];
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
            AppBarContainer(
              ishome: true,
              text: 'الشركة المصريه للحلول الكهربيه',
            ),
            SearchHomeScreen(),
            CarouseSliderScreen(items: image),
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

                        decoration: BoxDecoration(
                          color:
                              currentIndex == i
                                  ? AppColors.accentColor
                                  : Colors.white,
                          borderRadius: BorderRadius.circular(5),

                          border: Border.all(color: Colors.grey.shade100),
                        ),
                        child: Center(
                          child: Text(
                            title[i],
                            style: TextStyle(
                              fontSize: 10.sp,
                              color:
                                  currentIndex == i
                                      ? Colors.white
                                      : AppColors.titleLight,
                            ),
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
