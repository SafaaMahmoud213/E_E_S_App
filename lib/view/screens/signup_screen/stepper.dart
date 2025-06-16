import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/constant/images.dart';
import 'package:my_app/core/widgets.dart/custem_images.dart';

class StepperScreen extends StatefulWidget {
  final int? step;
  const StepperScreen({super.key, required this.step});

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  int activeStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          EasyStepper(
            activeStep: activeStep,
            lineStyle: LineStyle(
              lineLength: 70,
              activeLineColor: Colors.grey,
              lineThickness: 2,
              defaultLineColor: Colors.grey,
              finishedLineColor: AppColors.accentColor,
              lineType: LineType.normal,
            ),

            activeStepTextColor: AppColors.accentColor,
            finishedStepTextColor: Colors.grey,
            internalPadding: 12.0,
            stepRadius: 20,
            alignment: Alignment.center,
            fitWidth: false,
            showLoadingAnimation: false,
            enableStepTapping: false,

            showStepBorder: false,
            steps: [
              EasyStep(
                //  customTitle: SignUpPage1(),
                customStep: InkWell(
                  onTap: () {
                    setState(() {
                      activeStep = 0;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SvgPicture.asset(
                      "assets/icons/profile.svg",
                      color: activeStep == 0 ? AppColors.accentColor : Colors.green,
                      width: 40,
                      height: 40,
                    ),
                  ),
                ),
                title: 'Waiting',
              ),
              EasyStep(
                //customTitle: SignUpPage1(),
                customStep: InkWell(
                  onTap: () {
                    setState(() {
                      activeStep = 1;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SvgPicture.asset(
                      "assets/icons/buliding.svg",
                      color: activeStep == 1 ? AppColors.accentColor : Colors.green,
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
                title: 'Order Received',
              ),
              EasyStep(
                customStep: InkWell(
                  onTap: () {
                    setState(() {
                      activeStep = 2;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CustomImage(
                      url: AppImages.Status,
                      color: activeStep == 2 ? AppColors.accentColor : Colors.green,
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
                title: 'Preparing',
              ),
            ],
            onStepReached: (index) {
              setState(() {
                activeStep = index;
              });
            },
          ),
        ],
      ),
    );
  }
}
