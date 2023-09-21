import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ptolemay_test/src/features/counter/resource/data/data_counter_repository.dart';
import 'package:ptolemay_test/src/features/counter/resource/domain/counter_repository.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final CounterRepository _repository = const DataCounterRepository();
  CounterBloc() : super(const CounterFetchedState(value: 0)) {
    on<IncrementEvent>(
      (event, emit) => _repository.incrementCounter(event, emit, state),
    );
    on<DecrementEvent>(
      (event, emit) => _repository.decrementCounter(event, emit, state),
    );
  }
}
