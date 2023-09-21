// ignore_for_file: body_might_complete_normally_catch_error

import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:ptolemay_test/src/core/services/dependencies_container.dart';
import 'package:ptolemay_test/src/features/counter/resource/domain/weather_repository.dart';
import 'package:ptolemay_test/src/features/counter/state/weather_bloc/weather_bloc_bloc.dart';
import 'package:weather/weather.dart';

class DataWeatherRepository implements WeatherRepository {
  const DataWeatherRepository();

  @override
  Future<void> getWeatherData(GetWeatherInfo event, Emitter<WeatherState> emit) async {
    try {
      emit(const WeatherBlocLoading());
      final Position? position = await _determinePosition();

      if (position != null) {
        Weather weatherData = await openWeather.currentWeatherByLocation(position.latitude, position.longitude).catchError((error) {
          emit(WeatherBlocFailure(
            message: error.toString(),
          ));
          dependenciesContainer.talker.handle(error);
        });
        emit(WeatherBlocFetched(weatherData: weatherData));
      } else {
        emit(const WeatherBlocFailure(
          message: "Position is null",
        ));
      }
    } catch (e, st) {
      emit(
        WeatherBlocFailure(message: e.toString(), stackTrace: st),
      );
      dependenciesContainer.talker.handle(e, st);
    }
  }

  Future<Position?> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error('Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }
}
