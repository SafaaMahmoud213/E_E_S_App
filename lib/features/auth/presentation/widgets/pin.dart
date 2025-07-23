import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/controller/pinput_cubit/pinput_cubit.dart';
import 'package:my_app/core/constant/colors.dart';
import 'package:my_app/core/utils/extensions_sizedbox.dart';
import 'package:my_app/core/utils/navigator.dart';
import 'package:my_app/core/widgets/button.dart';
import 'package:my_app/features/botton_nav_screen/presentation/view/screens_nav.dart';
import 'package:pinput/pinput.dart';

/// For more examples check out the demo directory
// ignore: must_be_immutable
class PinputExample extends StatefulWidget {
  String? Function(String?)? validator;
  PinputExample({super.key, this.validator});

  @override
  State<PinputExample> createState() => _PinputExampleState();
}

class _PinputExampleState extends State<PinputExample> {
  final pinController = TextEditingController();
  final FocusNode focusNode = FocusNode();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 44,
      height: 44,
      textStyle: const TextStyle(fontSize: 20, color: AppColors.greyColor),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.greyColor),
      ),
    );

    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Directionality(
            textDirection: TextDirection.ltr,
            child: Pinput(
              length: 6,

              controller: pinController,
              focusNode: focusNode,
              defaultPinTheme: defaultPinTheme,
              separatorBuilder: (index) => const SizedBox(width: 8),
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              validator: widget.validator,
              cursor: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(width: 22, height: 1, color: Colors.white),
                ],
              ),
              focusedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: AppColors.secondaryColor),
                ),
              ),
              submittedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  color: AppColors.secondaryColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.white),
                ),
              ),
              errorPinTheme: defaultPinTheme.copyBorderWith(
                border: Border.all(color: Colors.redAccent),
              ),
            ),
          ),
          30.hi,
          BlocConsumer<PinputCubit, PinputState>(
            listener: (context, state) {
              if (state is PinputFailure) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(state.msg)));
              }
              if (state is PinputSucess) {
                AppNavigator().pushReplaceMent(page: ScreensNav());
              }
            },
            builder: (context, state) {
              return state is PinputLoading
                  ? Center(child: CircularProgressIndicator())
                  : AppButton(
                    ismaximumSize: true,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        context.read<PinputCubit>().checkPin(
                          pinController.text,
                        );
                      }
                    },
                    text: "تأكيد",
                  );
            },
          ),
          30.hi,
          Text(
            "ثانية  25 ",
            style: TextStyle(
              fontSize: 16.sp,
              color: AppColors.textColor,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
