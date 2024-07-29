import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ElevetedButtonWidget extends StatelessWidget {
  ElevetedButtonWidget({
    super.key,
    required this.widget,
    required this.bgColor,
    required this.function,
    this.itIsSignUpPage = false,
  });

  final Widget widget;
  final Color bgColor;
  final Function? function;
  bool itIsSignUpPage;

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
        onPressed: itIsSignUpPage
            ? function != null
                ? function!()
                : null
            : function,
        child: widget,
      ),
    );
  }
}
