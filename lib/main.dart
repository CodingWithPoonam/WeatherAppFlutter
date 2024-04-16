import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/config/theme/app_themes.dart';
import 'package:weather_app/injection_container.dart';
import 'package:weather_app/presentation/bloc/weather_bloc.dart';
import 'package:weather_app/presentation/pages/weather_page.dart';

void main() {
  initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (_)=> sl<WeatherBloc>())
    ], child: MaterialApp(
      title: 'Flutter Demo',
      theme: theme(),
      home: const WeatherPage(),
    ));
  }
}
