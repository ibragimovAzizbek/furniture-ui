import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture/core/router/router.dart';
import 'package:furniture/cubits/home/bottom_nav_bar_cubit.dart';
import 'package:furniture/cubits/home/home_cubit.dart';
import 'package:furniture/cubits/login/login_cubit.dart';
import 'package:furniture/cubits/signUp/sign_up_cubit.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => SignUpCubit()),
        BlocProvider(create: (context) => HomeCubit()),
        BlocProvider(create: (context) => BottomNavBarCubit()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Furniture',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          onGenerateRoute: RouterCont.inherentce.onGenerateRoute,
          initialRoute: '/init',
        );
      },
    );
  }
}
