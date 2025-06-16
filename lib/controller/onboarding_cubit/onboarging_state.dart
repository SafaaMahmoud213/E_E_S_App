part of 'onboarging_cubit.dart';

class OnboargingState extends Equatable {
  final int currentIndex;
  const OnboargingState({required this.currentIndex});

  @override
  List<Object> get props => [currentIndex];
}
