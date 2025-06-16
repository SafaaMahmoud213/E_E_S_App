import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'screen_nav_state.dart';

class ScreenNavCubit extends Cubit<ScreenNavState> {
  ScreenNavCubit() : super(ScreenNavState(currenIndex: 0));

  void selectedIndes(index) {
    emit(ScreenNavState(currenIndex: index));
  }
}
