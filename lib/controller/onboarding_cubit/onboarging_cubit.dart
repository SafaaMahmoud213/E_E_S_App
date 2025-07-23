import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/core/constant/images.dart';

part 'onboarging_state.dart';

class OnboargingCubit extends Cubit<OnboargingState> {
  OnboargingCubit() : super(OnboargingState(currentIndex: 0));
  List shape = [AppImages.shape1, AppImages.shape2];
  List<String> text = ["أفضل المنتجات", "طلبيتك في ميعادها!"];
  List<String> title = [
    "اكتشف منتجات مميزة واطلب فاتورة\n       من المورد الأقرب لك ",
    "تقدر تتابع حالة الطلبية \n  وهتوصلك في ميعادها",
  ];

  List<String> onboarding = [AppImages.onboarding, AppImages.onboarding2];

  void currentindex(index) {
    emit(OnboargingState(currentIndex: index));
  }
}
