part of 'counter_bloc.dart';

sealed class CounterState extends Equatable {
  const CounterState();

  @override
  List<Object> get props => [
        CounterFetchedState,
      ];
}

final class CounterFetchedState extends CounterState {
  const CounterFetchedState({
    required this.value,
  });

  final int value;

  @override
  List<Object> get props => [value];
}

final class CounterFailureState extends CounterState {
  const CounterFailureState({
    required this.message,
    required this.lastValidValue,
    this.stackTrace,
  });

  final String message;
  final int lastValidValue;
  final StackTrace? stackTrace;

  @override
  List<Object> get props => [message];
}
