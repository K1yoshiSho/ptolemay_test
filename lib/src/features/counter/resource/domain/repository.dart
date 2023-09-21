import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ptolemay_test/src/features/counter/bloc/counter_bloc.dart';

/// [CounterRepository] - interface for repository
abstract interface class CounterRepository {
  Future<void> incrementCounter(Increment event, Emitter<CounterState> emit, CounterState state);
  Future<void> decrementCounter(Decrement event, Emitter<CounterState> emit, CounterState state);
}
