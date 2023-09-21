import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ptolemay_test/src/features/counter/resource/data/data_weather_repository.dart';
import 'package:ptolemay_test/src/features/counter/resource/domain/weather_repository.dart';
import 'package:weather/weather.dart';

part 'weather_bloc_event.dart';
part 'weather_bloc_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository _repository = const DataWeatherRepository();
  WeatherBloc() : super(const WeatherBlocInitial()) {
    on<GetWeatherInfo>(
      (event, emit) => _repository.getWeatherData(event, emit),
    );
  }
}
