part of 'pinput_cubit.dart';

sealed class PinputState extends Equatable {
  const PinputState();

  @override
  List<Object> get props => [];
}

final class PinputInitial extends PinputState {}

final class PinputLoading extends PinputState {}

final class PinputSucess extends PinputState {}

final class PinputFailure extends PinputState {
  final String msg;

  const PinputFailure(this.msg);
  @override
  List<Object> get props => [msg];
}
