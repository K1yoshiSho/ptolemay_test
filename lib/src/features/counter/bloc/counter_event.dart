part of 'counter_bloc.dart';

sealed class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [
        Increment,
        Decrement,
      ];
}

class Increment extends CounterEvent {
  final bool isDark;
  const Increment({required this.isDark});
}

class Decrement extends CounterEvent {
  final bool isDark;
  const Decrement({required this.isDark});
}
