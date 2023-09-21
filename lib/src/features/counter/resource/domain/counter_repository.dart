import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ptolemay_test/src/features/counter/state/counter_bloc/counter_bloc.dart';

/// [CounterRepository] - interface for repository
abstract interface class CounterRepository {
  Future<void> incrementCounter(IncrementEvent event, Emitter<CounterState> emit, CounterState state);
  Future<void> decrementCounter(DecrementEvent event, Emitter<CounterState> emit, CounterState state);
}
