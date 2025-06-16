import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/controller/screen_nav_cubit/screen_nav_cubit.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/constant/images.dart';
import 'package:my_app/core/widgets.dart/custem_images.dart';
import 'package:my_app/view/screens/screens_button_nav/drawer_screens/drawer_screen.dart';
import 'package:my_app/view/screens/screens_button_nav/home_screen/bill_screen/bill_screen.dart';
import 'package:my_app/view/screens/screens_button_nav/home_screen/home_screen.dart';
import 'package:my_app/view/screens/screens_button_nav/shopping_screen.dart';
import 'package:my_app/view/screens/screens_button_nav/wallet_screen.dart';

class ScreensNav extends StatefulWidget {
  const ScreensNav({super.key});

  @override
  State<ScreensNav> createState() => _ScreensNavState();
}

class _ScreensNavState extends State<ScreensNav> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  List<Widget> screens = [
    HomeScreen(),
    ShoppingScreen(),
    BillScreen(),
    WalletScreen(),
    DrawerScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(child: DrawerScreen()),
      bottomNavigationBar: BlocBuilder<ScreenNavCubit, ScreenNavState>(
        builder: (context, state) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            showUnselectedLabels: true,
            selectedItemColor: AppColors.primaryColor,
            unselectedItemColor: AppColors.accentColor,
            currentIndex: state.currenIndex,
            unselectedLabelStyle: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: AppColors.textColor,
            ),

            selectedLabelStyle: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
            ),
            elevation: 0,
            onTap: (value) {
              context.read<ScreenNavCubit>().selectedIndes(value);
            },

            items: [
              BottomNavigationBarItem(
                icon: CustomImage(
                  url: AppImages.home,
                  color: state.currenIndex == 0 ? AppColors.primaryColor : AppColors.accentColor,
                ),
                label: "الرئيسية",
              ),
              BottomNavigationBarItem(
                icon: CustomImage(
                  url: AppImages.shopping,
                  color: state.currenIndex == 1 ? AppColors.primaryColor : AppColors.accentColor,
                ),
                label: "العربة",
              ),
              BottomNavigationBarItem(
                icon: CustomImage(
                  url: AppImages.bill,
                  color: state.currenIndex == 2 ? AppColors.primaryColor : AppColors.accentColor,
                ),
                label: "فواتيري",
              ),
              BottomNavigationBarItem(
                icon: CustomImage(
                  url: AppImages.wallet,
                  color: state.currenIndex == 3 ? AppColors.primaryColor : AppColors.accentColor,
                ),
                label: "المحفظة",
              ),
              BottomNavigationBarItem(
                icon: DrawerButton(
                  style: ButtonStyle(
                    iconColor:
                        state.currenIndex == 4
                            ? WidgetStateProperty.all(AppColors.primaryColor)
                            : WidgetStateProperty.all(AppColors.accentColor),
                    iconSize: WidgetStateProperty.all(30),
                  ),
                  onPressed: () {
                    scaffoldKey.currentState?.openDrawer();
                  },
                ),
                label: "",
              ),
            ],
          );
        },
      ),
      body: BlocBuilder<ScreenNavCubit, ScreenNavState>(
        builder: (context, state) {
          return screens[state.currenIndex];
        },
      ),
    );
  }
}
