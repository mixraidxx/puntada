import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puntada/brand/Theme.dart';
import 'package:puntada/cubit/home/home_cubit.dart';
import 'package:puntada/cubit/login/login_cubit.dart';
import 'package:puntada/views/home/HomeView.dart';
import 'package:puntada/views/login/LoginView.dart';
import 'package:puntada/views/tabbar/TabbarView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => HomeCubit())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Puntada',
        theme: BrandTheme.appTheme,
        home: const LoginView(),
        routes: {
          LoginView.routeName: (context) => const LoginView(),
          HomeView.routeName: ((context) => const HomeView()),
          TabView.routeName: ((context) => const TabView())
        },
      ),
    );
  }
}
