part of 'weather_bloc_bloc.dart';

sealed class WeatherEvent extends Equatable {
  const WeatherEvent();

  @override
  List<Object> get props => [
        GetWeatherInfo,
      ];
}

class GetWeatherInfo extends WeatherEvent {
  const GetWeatherInfo();

  @override
  List<Object> get props => [];
}
