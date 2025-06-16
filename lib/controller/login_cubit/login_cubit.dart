import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  void logIn(pass) async {
    emit(LoginLoading());
    await Future.delayed(Duration(seconds: 2));
    if (pass == "01090625272") {
      emit(LoginSuccess());
    } else {
      emit(LoginFailure("يجب ادخال رقم المستخدم  صحيح"));
    }
  }
}
