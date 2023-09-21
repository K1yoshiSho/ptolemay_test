part of 'counter_bloc.dart';

sealed class CounterState extends Equatable {
  const CounterState();

  @override
  List<Object> get props => [
        CounterFetched,
      ];
}

final class CounterFetched extends CounterState {
  const CounterFetched({
    required this.value,
  });

  final int value;

  @override
  List<Object> get props => [value];
}

final class CounterError extends CounterState {
  const CounterError({
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
