part of 'weather_bloc_bloc.dart';

sealed class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [
        WeatherBlocFetched,
      ];
}

final class WeatherBlocInitial extends WeatherState {
  const WeatherBlocInitial();
}

final class WeatherBlocLoading extends WeatherState {
  const WeatherBlocLoading();
}

final class WeatherBlocFetched extends WeatherState {
  final Weather weatherData;
  const WeatherBlocFetched({required this.weatherData});

  @override
  List<Object> get props => [weatherData];
}

final class WeatherBlocFailure extends WeatherState {
  final String message;
  final StackTrace? stackTrace;

  const WeatherBlocFailure({required this.message, this.stackTrace});

  @override
  List<Object> get props => [message];
}
