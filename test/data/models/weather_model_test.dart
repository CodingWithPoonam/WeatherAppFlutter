import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/domain/entities/weather.dart';

import '../../helpers/json_reader.dart';

void main() {
  const testWeatherModel = WeatherModel(
    cityName: 'Riga',
    main: 'snow',
    description: 'heavy snowfall',
    iconCode: '03d',
    temperature: 292.87,
    pressure: 1012,
    humidity: 70,
  );
  test('should be a sub class of weather entity', () async {
    // assert
    expect(testWeatherModel, isA<WeatherEntity>());
  });
  test('should return a valid model from json', () async {
    //arrange
    final Map<String, dynamic> jsonMap =
        json.decode(readJson('helpers/dummy_data/dummy_weather_response.json'));
    //act
    final result = WeatherModel.fromJson(jsonMap);
    //expect
    expect(result, equals(testWeatherModel));
  });

  test(
    'should return a json map containing proper data',
    () async {
      // act
      final result = testWeatherModel.toJson();

      // assert
      final expectedJsonMap = {
        'weather': [
          {
            'main': 'snow',
            'description': 'heavy snowfall',
            'icon': '03d',
          }
        ],
        'main': {
          'temp': 292.87,
          'pressure': 1012,
          'humidity': 70,
        },
        'name': 'Riga',
      };

      expect(result, equals(expectedJsonMap));
    },
  );
}
