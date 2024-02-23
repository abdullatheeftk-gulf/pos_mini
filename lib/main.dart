import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/add/add_bloc.dart';
import 'package:pos_mini/blocs/add/edit_product/edit_product_cubit.dart';
import 'package:pos_mini/blocs/admin_login/admin_login_bloc.dart';
import 'package:pos_mini/blocs/main/main_bloc.dart';
import 'package:pos_mini/blocs/settings/add_user/add_user_cubit.dart';
import 'package:pos_mini/blocs/settings/update_user/update_user_cubit.dart';
import 'package:pos_mini/blocs/splash/splash_bloc.dart';
import 'package:pos_mini/blocs/take_away/take_away_bloc.dart';
import 'package:pos_mini/blocs/url/url_bloc.dart';
import 'package:pos_mini/blocs/user_login/user_login_bloc.dart';
import 'package:pos_mini/repository/api_repository/api_repository.dart';
import 'package:pos_mini/repository/shared_preferences_repository.dart';
import 'package:pos_mini/screens/splash/splash_screen.dart';

import 'blocs/settings/get_all_users/get_all_users_cubit.dart';

final Dio dio = Dio();

final RouteObserver<PageRoute> routeObserver = RouteObserver();

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
          create: (context) => ApiRepository(),
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
          BlocProvider(create: (_) => MainBloc()),
          BlocProvider(
            create: (context) => TakeAwayBloc(
              apiRepository: context.read<ApiRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => AddBloc(
              apiRepository: context.read<ApiRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => EditProductCubit(
              apiRepository: context.read<ApiRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => AddUserCubit(
              apiRepository: context.read<ApiRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => GetAllUsersCubit(
              apiRepository: context.read<ApiRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => UpdateUserCubit(
              apiRepository: context.read<ApiRepository>(),
            ),
          ),
        ],
        child: MaterialApp(
          title: 'Unipos Pos Mini',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromARGB(255, 0, 26, 51)),
            useMaterial3: true,
          ),
          navigatorObservers: [routeObserver],

          home: const SplashScreen(),
        ),
      ),
    );
  }
}
