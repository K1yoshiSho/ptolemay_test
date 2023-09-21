import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ptolemay_test/src/features/counter/bloc/counter_bloc.dart';
import 'package:ptolemay_test/src/features/counter/resource/domain/repository.dart';

class DataCounterRepository implements CounterRepository {
  DataCounterRepository();

  @override
  Future<void> incrementCounter(Increment event, Emitter<CounterState> emit, CounterState state) async {
    final int value = (state is CounterFetched) ? state.value + (event.isDark ? 2 : 1) : (state as CounterError).lastValidValue;

    if (value < 10) {
      emit(CounterFetched(value: value));
    } else {
      emit(const CounterError(message: 'Max counter limit reached', lastValidValue: 10));
    }
  }

  @override
  Future<void> decrementCounter(Decrement event, Emitter<CounterState> emit, CounterState state) async {
    final int value = (state is CounterFetched) ? state.value - (event.isDark ? 2 : 1) : (state as CounterError).lastValidValue;

    if (value > 0) {
      emit(CounterFetched(value: value));
    } else {
      emit(const CounterError(message: 'Min counter limit reached', lastValidValue: 0));
    }
  }
}
