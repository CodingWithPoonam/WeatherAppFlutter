import 'package:get_it/get_it.dart';
import 'package:weather_app/data/data_sources/remote_data_sources.dart';
import 'package:weather_app/data/repositories/weather_repository_impl.dart';
import 'package:weather_app/domain/repositories/weather_repository.dart';
import 'package:weather_app/domain/usecases/get_current_weather.dart';
import 'package:weather_app/presentation/bloc/weather_bloc.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  //bloc
  sl.registerFactory(() => WeatherBloc(sl()));

  //usecase
  sl.registerLazySingleton(() => GetCurrentWeatherUseCase(sl()));

  // repository
  sl.registerLazySingleton<WeatherRepository>(
    () => WeatherRepositoryImpl(weatherRemoteDataSource: sl()),
  );
  // data source
  sl.registerLazySingleton<WeatherRemoteDataSource>(
    () => WeatherRemoteDataSourceImpl(
      client: sl(),
    ),
  );

  // external
  sl.registerLazySingleton(() => http.Client());
}
