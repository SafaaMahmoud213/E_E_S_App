class CounterStates {
  final int counter;
  CounterStates(this.counter);
}

class CounterIcrement extends CounterStates {
  CounterIcrement(super.counter);
}

class CounterDecrement extends CounterStates {
  CounterDecrement(super.counter);
}
