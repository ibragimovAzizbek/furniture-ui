import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture/presentation/resource/assets_manager.dart';
import 'package:furniture/presentation/resource/colors_manager.dart';

class AuthBasicContainer extends StatelessWidget {
  const AuthBasicContainer({
    super.key,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  final String title;
  final String subtitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: color,
          height: 307.h,
          width: double.infinity,
          padding: EdgeInsets.only(left: 29.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 68.05.h),
              SvgPicture.asset(AppIcons.logoBlack),
              SizedBox(height: 28.05.h),
              Text(
                title,
                style: TextStyle(
                  fontSize: 22.sp,
                  color: ColorManager.black100,
                ),
              ),
              SizedBox(height: 11.05.h),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 32.sp,
                  color: ColorManager.black100,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        Positioned(
          right: 0,
          top: 15,
          child: SvgPicture.asset(
            AppIcons.bgElement,
            height: 320.h,
            width: 268.w,
          ),
        )
      ],
    );
  }
}
