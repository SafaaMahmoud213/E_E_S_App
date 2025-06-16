part of 'screen_nav_cubit.dart';

class ScreenNavState extends Equatable {
  final int currenIndex;
  const ScreenNavState({required this.currenIndex});

  @override
  List<Object> get props => [currenIndex];
}
