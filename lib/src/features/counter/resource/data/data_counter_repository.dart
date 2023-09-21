import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ptolemay_test/src/features/counter/state/counter_bloc/counter_bloc.dart';
import 'package:ptolemay_test/src/features/counter/resource/domain/counter_repository.dart';

class DataCounterRepository implements CounterRepository {
  const DataCounterRepository();

  @override
  Future<void> incrementCounter(IncrementEvent event, Emitter<CounterState> emit, CounterState state) async {
    final int value = (state is CounterFetchedState) ? state.value + (event.isDark ? 2 : 1) : (state as CounterFailureState).lastValidValue;

    if (value < 10) {
      emit(CounterFetchedState(value: value));
    } else {
      emit(const CounterFailureState(message: 'Max counter limit reached', lastValidValue: 10));
    }
  }

  @override
  Future<void> decrementCounter(DecrementEvent event, Emitter<CounterState> emit, CounterState state) async {
    final int value = (state is CounterFetchedState) ? state.value - (event.isDark ? 2 : 1) : (state as CounterFailureState).lastValidValue;

    if (value > 0) {
      emit(CounterFetchedState(value: value));
    } else {
      emit(const CounterFailureState(message: 'Min counter limit reached', lastValidValue: 0));
    }
  }
}
