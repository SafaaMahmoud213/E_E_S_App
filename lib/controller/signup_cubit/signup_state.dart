import 'package:equatable/equatable.dart';

sealed class SignupState extends Equatable {
  const SignupState();
  @override
  List<Object> get props => [];
}

final class SignupInitial extends SignupState {}

final class SignupLoading extends SignupState {}

final class SignupSuccess extends SignupState {}

final class SignupFailure extends SignupState {
  final String message;

  const SignupFailure(this.message);
  @override
  List<Object> get props => [message];
}
