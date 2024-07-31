import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/add/add_bloc.dart';
import 'package:pos_mini/blocs/add/dine_in/table/add_table_cubit.dart';
import 'package:pos_mini/blocs/add/edit_product/edit_product_cubit.dart';
import 'package:pos_mini/blocs/admin_login/admin_login_bloc.dart';
import 'package:pos_mini/blocs/add/dine_in/area/area_cubit.dart';
import 'package:pos_mini/blocs/main/main_bloc.dart';
import 'package:pos_mini/blocs/reset_admin_password/reset_admin_password_cubit.dart';
import 'package:pos_mini/blocs/settings/add_user/add_user_cubit.dart';
import 'package:pos_mini/blocs/settings/change_base_url/change_base_url_cubit.dart';
import 'package:pos_mini/blocs/settings/logout_bloc/logout_cubit.dart';
import 'package:pos_mini/blocs/settings/update_user/update_user_cubit.dart';
import 'package:pos_mini/blocs/splash/splash_bloc.dart';
import 'package:pos_mini/blocs/take_away/take_away_bloc.dart';
import 'package:pos_mini/blocs/url/url_bloc.dart';
import 'package:pos_mini/blocs/user_login/user_login_bloc.dart';
import 'package:pos_mini/repository/api_repository/api_repository.dart';
import 'package:pos_mini/repository/shared_data_repository/shared_data_repository.dart';
import 'package:pos_mini/repository/shared_preferences_repository.dart';
import 'package:pos_mini/screens/main/screens/add/widgets/dine_in/screen/edit_table_screen/bloc/edit_table_cubit.dart';
import 'package:pos_mini/screens/main/screens/add/widgets/dine_in/screen/show_all_table_under_area/bloc/show_all_table_under_an_area_cubit.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/add_new_kot/bolc/add_new_kot_cubit.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table/cubit/table_screen_cubit.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table_food_item/cubit/table_food_selection_cubit.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table_kot/cubit/table_kot_cubit.dart';
import 'package:pos_mini/screens/splash/splash_screen.dart';
import 'package:pos_mini/util/color_constants.dart';
import 'package:pos_mini/util/log_functions/log_functions.dart';

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
          create: (_) => SharedPreferencesRepository(),
        ),
        RepositoryProvider(
          create: (_) => ApiRepository(),
        ),
        RepositoryProvider(
          create: (_) => SharedDataRepository(),
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
                sharedDataRepository: context.read<SharedDataRepository>()),
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
          BlocProvider(
            create: (context) => ResetAdminPasswordCubit(
              apiRepository: context.read<ApiRepository>(),
              sharedDataRepository: context.read<SharedDataRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => ChangeBaseUrlCubit(
              apiRepository: context.read<ApiRepository>(),
            ),
          ),
          BlocProvider(
            create: (_) => LogoutCubit(),
          ),
          BlocProvider(
            create: (context) => AreaCubit(
              apiRepository: context.read<ApiRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => AddTableCubit(
              apiRepository: context.read<ApiRepository>(),
              sharedDataRepository: context.read<SharedDataRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => ShowAllTableUnderAnAreaCubit(
                apiRepository: context.read<ApiRepository>(),
                sharedDataRepository: context.read<SharedDataRepository>()),
          ),
          BlocProvider(
              create: (context) =>
                  EditTableCubit(apiRepository: context.read<ApiRepository>())),
          BlocProvider(
              create: (context) => TableScreenCubit(
                  apiRepository: context.read<ApiRepository>())),
          BlocProvider(
            create: (context) => TableKotCubit(
              apiRepository: context.read<ApiRepository>(),
              sharedDataRepository: context.read<SharedDataRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => TableFoodSelectionCubit(
              apiRepository: context.read<ApiRepository>(),
              sharedDataRepository: context.read<SharedDataRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => AddNewKotCubit(
              apiRepository: context.read<ApiRepository>(),
            ),
          )
        ],
        child: MaterialApp(
          scrollBehavior: MyCustomScrollBehavior(),
          title: 'Unipos Pos Mini',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: deepBlueColour,
            ),
            useMaterial3: true,
          ),
          navigatorObservers: [routeObserver],
          home: const SplashScreen(),
        ),
      ),
    );
  }
}

class HomeTest extends StatelessWidget {
  const HomeTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Expanded(
          flex: 1,
          child: Center(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final maxWidth = constraints.maxWidth;
                return Text("screen width $maxWidth");
              },
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Center(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final maxWidth = constraints.maxWidth;
                return Text("screen width $maxWidth");
              },
            ),
          ),
        ),
      ],
    ),
    );
  }
}


class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    // etc.
  };
}
