import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture/presentation/resource/assets_manager.dart';
import 'package:furniture/presentation/resource/colors_manager.dart';

class FurnitureItemCard extends StatelessWidget {
  const FurnitureItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 182.h,
          width: 170.w,
          padding: EdgeInsets.all(50.w),
          decoration: BoxDecoration(
            color: ColorManager.eEF3E9,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Image.asset(
            ImageAssets.noImage,
            height: 50.h,
            width: 50.w,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          "Arm Chair",
          style: TextStyle(
            fontSize: 16.w,
            fontWeight: FontWeight.bold,
            color: ColorManager.black100,
          ),
        ),
        SizedBox(height: 2.h),
        Text(
          "\$124.00",
          style: TextStyle(fontSize: 14.0, color: ColorManager.black60),
        ),
      ],
    );
  }
}
