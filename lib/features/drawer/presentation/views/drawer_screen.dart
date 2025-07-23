import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/constant/images.dart';
import 'package:my_app/core/utils/navigator.dart';
import 'package:my_app/core/widgets/custem_images.dart';
import 'package:my_app/features/auth/presentation/view/login.dart';
import 'package:my_app/features/drawer/presentation/views/call_screen.dart';
import 'package:my_app/features/drawer/presentation/views/notification_screen.dart';
import 'package:my_app/features/drawer/presentation/views/profile_screen.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  List<String> title = [
    "البيانات الشخصية",
    "  الإشعارات",
    "أجهزة مراوح",
    "ادفع بالاجل",
    "إتصل بنا",
    "تسجيل الخروج",
  ];
  late List<Function> ontaps;

  @override
  void initState() {
    super.initState();
    ontaps = [
      () {
        AppNavigator().push(page: ProfileScreen());
      },
      () {
        AppNavigator().push(page: NewNotification());
      },
      () {},
      () {},
      () {
        showModalBottomSheet(
          context: context,
          builder: (c) {
            return CallScreen();
          },
        );
      },
      () {
        AwesomeDialog(
          context: context,
          animType: AnimType.bottomSlide,
          dialogType: DialogType.warning,
          body: Center(
            child: Text(
              'هل تريد تسجيل الخروج',
              style: TextStyle(fontSize: 16, color: AppColors.titleLight),
            ),
          ),

          btnCancelOnPress: () {},
          btnCancelIcon: Icons.cancel,
          btnOkOnPress: () {
            AppNavigator().push(page: LogInScreen());
          },
          btnOkIcon: Icons.check_circle,
          btnOkColor: AppColors.primaryColor,
        ).show();
      },
    ];
  }

  int currentIndex = 0;
  List images = [
    AppImages.profile,
    AppImages.notification,
    AppImages.power,
    AppImages.wallet2,
    AppImages.call,

    AppImages.logout,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomImage(url: AppImages.logo2, width: double.infinity),
            ListView.builder(
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: ontaps[index] as GestureTapCallback?,
                  child: Container(
                    padding: EdgeInsets.only(right: 17),
                    margin: EdgeInsets.only(
                      top: index == 5 ? 72 : 20,
                      left: 20,
                      right: 20,
                    ),
                    height: 56.h,
                    width: 231.w,
                    decoration: BoxDecoration(
                      color:
                          index == 5 || index == 3
                              ? const Color.fromARGB(255, 251, 227, 229)
                              : Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        CustomImage(url: images[index], width: 30, height: 30),
                        SizedBox(width: 10),
                        Text(
                          title[index],
                          style: TextStyle(
                            fontSize: 16,

                            color:
                                index == 5 || index == 3
                                    ? Colors.red
                                    : Colors.black,
                          ),
                        ),
                        Spacer(),
                        index == 3
                            ? Container(
                              margin: EdgeInsets.only(bottom: 25),
                              width: 55,
                              height: 24,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 247, 209, 212),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                ),
                              ),
                              child: Center(child: Text("قريبًا")),
                            )
                            : SizedBox(),
                      ],
                    ),
                  ),
                );
              },
              itemCount: images.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
            ),
          ],
        ),
      ),
    );
  }
}
