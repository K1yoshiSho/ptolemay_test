import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ptolemay_test/src/features/counter/resource/data/data_repository.dart';
import 'package:ptolemay_test/src/features/counter/resource/domain/repository.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final CounterRepository _repository = DataCounterRepository();
  CounterBloc() : super(const CounterFetched(value: 0)) {
    on<Increment>(
      (event, emit) => _repository.incrementCounter(event, emit, state),
    );
    on<Decrement>(
      (event, emit) => _repository.decrementCounter(event, emit, state),
    );
  }
}
