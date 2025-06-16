import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'onboarging_state.dart';

class OnboargingCubit extends Cubit<OnboargingState> {
  OnboargingCubit() : super(OnboargingState(currentIndex: 0));

  void currentindex(index) {
    emit(OnboargingState(currentIndex: index));
  }
}
