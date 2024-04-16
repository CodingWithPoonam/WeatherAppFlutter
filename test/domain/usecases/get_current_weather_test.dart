import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_app/domain/entities/weather.dart';
import 'package:weather_app/domain/usecases/get_current_weather.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late GetCurrentWeatherUseCase getCurrentWeatherUseCase;
  late MockWeatherRepository mockWeatherRepository;

  setUp(() {
    mockWeatherRepository = MockWeatherRepository();
    getCurrentWeatherUseCase = GetCurrentWeatherUseCase(mockWeatherRepository);
  });

  const testWeatherDetail = WeatherEntity(
      cityName: 'riga',
      main: 'snow',
      description: 'heavy snowfall',
      iconCode: '03d',
      temperature: 315.54,
      pressure: 1000,
      humidity: 20);

  const testCityName = 'Riga';

  test('should get current weather detail from the repository', () async {
    //arrange
    when(mockWeatherRepository.getCurrentWeather(testCityName))
        .thenAnswer((_) async => const Right(testWeatherDetail));

    //act
    final result = await getCurrentWeatherUseCase.execute(testCityName);

    //assert
    expect(result, const Right(testWeatherDetail));
  });
}
