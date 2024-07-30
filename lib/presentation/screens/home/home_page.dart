import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture/cubits/home/bottom_nav_bar_cubit.dart';
import 'package:furniture/presentation/resource/assets_manager.dart';
import 'package:furniture/presentation/resource/colors_manager.dart';
import 'package:furniture/presentation/screens/home/components/home_bottom_bar.dart';
import 'package:furniture/presentation/screens/home/components/pages/home_body.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Widget> widgets = [
    HomeBody(),
    HomeBody(),
    HomeBody(),
    HomeBody(),
    HomeBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.black100,
      appBar: AppBar(
        leadingWidth: 67.w,
        leading: Padding(
          padding: EdgeInsets.only(left: 28.w),
          child: Image.asset(
            ImageAssets.homeLeadingIcon,
            height: 39.h,
            width: 39.w,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Home",
          style: TextStyle(
            fontSize: 16.sp,
            color: ColorManager.black100,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              ImageAssets.oclock,
              height: 24.h,
              width: 24.w,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              ImageAssets.search,
              height: 24.h,
              width: 24.w,
            ),
          ),
        ],
      ),
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
        child: widgets[context.read<BottomNavBarCubit>().getIndex],
      ),
      bottomNavigationBar: const HomeBottomBar(),
    );
  }
}
