// ignore_for_file: body_might_complete_normally_catch_error

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ptolemay_test/src/features/counter/state/weather_bloc/weather_bloc_bloc.dart';
import 'package:weather/weather.dart';

WeatherFactory openWeather = WeatherFactory("70c84db4add85475621edb4291a1445d", language: Language.ENGLISH);

abstract interface class WeatherRepository {
  Future<void> getWeatherData(GetWeatherInfo event, Emitter<WeatherState> emit);
}
