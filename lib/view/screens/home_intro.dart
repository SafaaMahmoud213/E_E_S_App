import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/constant/images.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/utils/navigator.dart';
import 'package:my_app/view/screens/screens_button_nav/screens_nav.dart';

class HomeIntro extends StatefulWidget {
  const HomeIntro({super.key});

  @override
  State<HomeIntro> createState() => _HomeIntroState();
}

class _HomeIntroState extends State<HomeIntro> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(image: AssetImage(AppImages.shape1), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(AppImages.intro),
              Text(
                "اطلب فاتورتك علي حسب إحتياجك",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.w700,
                ),
              ),
              40.hi,
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = 0;
                      });
                    },
                    child: Container(
                      width: 160,
                      height: 108,
                      decoration: BoxDecoration(
                        color: currentIndex == 0 ? AppColors.primaryColor : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "أجهزة كهربائية",
                          style: TextStyle(
                            fontSize: 20,
                            color: currentIndex == 0 ? Colors.white : Colors.grey.shade900,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  20.wi,
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = 1;
                      });
                      AppNavigator().push(page: ScreensNav());
                    },
                    child: Container(
                      width: 160,
                      height: 108,
                      decoration: BoxDecoration(
                        color: currentIndex == 1 ? AppColors.primaryColor : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Center(
                        child: Text(
                          "أجهزة مراوح",
                          style: TextStyle(
                            fontSize: 20,
                            color: currentIndex == 1 ? Colors.white : Colors.grey.shade900,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
