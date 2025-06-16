import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'pinput_state.dart';

class PinputCubit extends Cubit<PinputState> {
  PinputCubit() : super(PinputInitial());
  void checkPin(pin) async {
    emit(PinputLoading());

    await Future.delayed(Duration(seconds: 1));

    if (pin == "000000") {
      emit(PinputSucess());
    } else {
      emit(PinputFailure("يجب ادخال رمز التحقق صحيح"));
    }
  }
}
