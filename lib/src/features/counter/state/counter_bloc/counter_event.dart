part of 'counter_bloc.dart';

sealed class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [
        IncrementEvent,
        DecrementEvent,
      ];
}

class IncrementEvent extends CounterEvent {
  final bool isDark;
  const IncrementEvent({required this.isDark});
}

class DecrementEvent extends CounterEvent {
  final bool isDark;
  const DecrementEvent({required this.isDark});
}
