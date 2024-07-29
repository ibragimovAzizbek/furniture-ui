import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ElevetedButtonWidget extends StatelessWidget {
  const ElevetedButtonWidget({
    super.key,
    required this.widget,
    required this.bgColor,
  });

  final Widget widget;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
          fixedSize: Size(357.w, 76.h),
          backgroundColor: bgColor,
        ),
        child: widget,
        onPressed: () {},
      ),
    );
  }
}
