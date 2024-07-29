import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/presentation/resource/assets_manager.dart';
import 'package:furniture/presentation/resource/colors_manager.dart';

class InitPage extends StatefulWidget {
  const InitPage({super.key});

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 250), () {
      Navigator.pushNamed(context, "/on_boarding");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.bgBlack,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppIcons.logosvg,
              height: 69.h,
              width: 51.w,
            ),
            SizedBox(height: 16.h),
            SvgPicture.asset(
              AppIcons.logoText,
              height: 33.h,
              width: 133.w,
            ),
          ],
        ),
      ),
    );
  }
}
