import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture/presentation/resource/colors_manager.dart';
import 'package:furniture/presentation/screens/home/components/like_body_iteam.dart';

class LikeBody extends StatelessWidget {
  const LikeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 48.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(
                  color: ColorManager.c9C907C,
                ),
              ),
              child: Text(
                "Watchlist(4)",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: ColorManager.c9C907C,
                ),
              ),
            ),
            SizedBox(height: 31.h),
            ListView.builder(
              itemCount: 4,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 16.h),
                  child: const LikeIteam(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
