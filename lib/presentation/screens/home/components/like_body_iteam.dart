import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture/presentation/resource/assets_manager.dart';
import 'package:furniture/presentation/resource/colors_manager.dart';

class LikeIteam extends StatelessWidget {
  const LikeIteam({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 178.h,
      decoration: BoxDecoration(
        color: ColorManager.eEF3E9,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          SizedBox(width: 37.w),
          SizedBox(
            height: 50.h,
            width: 50.w,
            child: Image.asset(ImageAssets.noImage),
          ),
          SizedBox(width: 81.w),
          Padding(
            padding: EdgeInsets.only(top: 29.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "VEDBO",
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: ColorManager.c39352F,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  "Armchair, Gunnared",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: ColorManager.c9C907C,
                  ),
                ),
                SizedBox(height: 13.h),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 16.sp,
                      color: ColorManager.c39352F,
                    ),
                    Icon(
                      Icons.star,
                      size: 16.sp,
                      color: ColorManager.c39352F,
                    ),
                    Icon(
                      Icons.star,
                      size: 16.sp,
                      color: ColorManager.c39352F,
                    ),
                    Icon(
                      Icons.star,
                      size: 16.sp,
                      color: ColorManager.c39352F,
                    ),
                    Icon(
                      Icons.star_border,
                      size: 16.sp,
                      color: ColorManager.c39352F,
                    ),
                    Text(
                      "(53)",
                      style: TextStyle(
                        color: ColorManager.c9C907C,
                        fontSize: 12.sp,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 18.h, left: 136.w),
                  child: InkWell(
                    child: CircleAvatar(
                      backgroundColor: ColorManager.bgWhite,
                      radius: 18.h,
                      child: SvgPicture.asset(
                        AppIcons.bottomShop,
                        height: 16.h,
                        width: 11.w,
                        // ignore: deprecated_member_use
                        color: ColorManager.fF912F,
                      ),
                    ),
                    onTap: () {},
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
