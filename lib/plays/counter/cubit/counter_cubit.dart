import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/plays/counter/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterStates(0));
  incremant() {
    emit(CounterIcrement(state.counter + 1));
  }

  decrement() {
    emit(CounterDecrement(state.counter - 1));
  }
}
