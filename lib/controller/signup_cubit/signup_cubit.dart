import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/controller/signup_cubit/signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  void signUp(name, pass) async {
    emit(SignupLoading());
    await Future.delayed(Duration(seconds: 2));
    if (name == "safaa" && pass == "01090625272") {
      emit(SignupSuccess());
    } else {
      emit(SignupFailure("الرجاء ادخال البيانات بشكل صحيح"));
    }
  }
}
