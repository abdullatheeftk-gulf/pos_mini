import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/admin_login/admin_login_bloc.dart';
import 'package:pos_mini/blocs/splash/splash_bloc.dart';
import 'package:pos_mini/blocs/url/url_bloc.dart';
import 'package:pos_mini/blocs/user_login/user_login_bloc.dart';
import 'package:pos_mini/repository/api_repository.dart';
import 'package:pos_mini/repository/shared_preferences_repository.dart';
import 'package:pos_mini/screens/splash/splash_screen.dart';

final Dio dio = Dio();

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => SharedPreferencesRepository(),
        ),
        RepositoryProvider(
          create: (context) => ApiRepository(dio: dio),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => SplashBloc(
              sharedPreferencesRepository:
                  context.read<SharedPreferencesRepository>(),
              apiRepository: context.read<ApiRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => UrlBloc(
              sharedPreferencesRepository:
              context.read<SharedPreferencesRepository>(),
              apiRepository: context.read<ApiRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => UserLoginBloc(
              apiRepository: context.read<ApiRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => AdminLoginBloc(
              apiRepository: context.read<ApiRepository>(),
            ),
          ),
        ],
        child: MaterialApp(
          title: 'Unipos Pos Mini',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
            useMaterial3: true,
          ),
          home: const SplashScreen(),
        ),
      ),
    );
  }
}
