import 'package:boilerplate/cubits/network_cubit/network_cubit.dart';
import 'package:boilerplate/services/auth_service.dart';
import 'package:boilerplate/utils/routes/app_router.dart';
import 'package:boilerplate/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.I;
void setupLocator() {
  locator.registerSingleton<AuthService>(AuthService());
}

void main() {
  setupLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (c) => NetworkCubit()..start(),
          lazy: false,
        ),
      ],
      child: MaterialApp.router(
        builder: (context, child) {
          return BlocBuilder<NetworkCubit, NetworkState>(
              bloc: context.read<NetworkCubit>(),
              builder: (context, state) {
                if (state == const NetworkState.failure()) {
                  return Container();
                } else {
                  return child ?? Container();
                }
              });
        },
        title: 'Flutter boilerplate',
        theme: Themes.light,
        routerConfig: AppRouter(),
      ),
    );
  }
}
