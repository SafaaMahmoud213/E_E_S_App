import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:my_app/core/cach/cache_helper.dart';
import 'package:my_app/core/constant/images.dart';
import 'package:my_app/core/service/service_locator.dart';
import 'package:my_app/features/botton_nav_screen/presentation/view/home_intro.dart';
import 'package:my_app/features/onboarding/presentation/view/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    bool isVisited = getIt<CacheHelper>().getData(key: "isVisited") ?? false;

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        if (isVisited == true) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const HomeIntro()),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const OnboardingScreen()),
          );
        }
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.asset(
          width: 200.w,
          height: 200.h,
          AppImages.animatLogo1,
          controller: _controller,
          onLoaded: (composition) {
            _controller
              ..duration = composition.duration
              ..forward();
          },
        ),
      ),
    );
  }
}













// import 'package:flutter/material.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Color.fromARGB(255, 72, 133, 239),
//                 Color(0xFF4A90E2),
//                 Color(0xFF50E3C2),
//               ],
//               begin: Alignment.topRight,
//               end: Alignment.bottomRight,
//             ),
//           ),
//         child: Column(

//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
          
//             Image.asset("assets/images/logo.png", width: double.infinity, height: 70,),
        
//           ],
//         ),
//       ),
//     );
//   }
// }