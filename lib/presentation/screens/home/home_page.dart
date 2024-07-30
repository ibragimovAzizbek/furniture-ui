import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture/cubits/home/bottom_nav_bar_cubit.dart';
import 'package:furniture/presentation/resource/colors_manager.dart';
import 'package:furniture/presentation/screens/home/components/app_bar.dart';
import 'package:furniture/presentation/screens/home/components/home_bottom_bar.dart';
import 'package:furniture/presentation/screens/home/components/pages/home_body.dart';
import 'package:furniture/presentation/screens/home/components/pages/like_body.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Widget> widgets = [
    HomeBody(),
    LikeBody(),
    HomeBody(),
    HomeBody(),
    HomeBody(),
  ];

  final List appBars = [
    AppBarHome(),
    AppBarLike(),
    AppBarHome(),
    AppBarLike(),
    AppBarHome(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.black100,
      appBar: appBars[context.watch<BottomNavBarCubit>().selectedIndex],
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.85,
        decoration: BoxDecoration(
          color: ColorManager.bgWhite,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15.r),
            bottomRight: Radius.circular(15.r),
          ),
        ),
        child: widgets[context.watch<BottomNavBarCubit>().selectedIndex],
      ),
      bottomNavigationBar: const HomeBottomBar(),
    );
  }
}
