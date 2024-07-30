import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture/presentation/resource/colors_manager.dart';

class TitleAndTextButton extends StatelessWidget {
  const TitleAndTextButton({
    super.key,
    required this.title,
    required this.text,
  });

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18.sp,
            color: ColorManager.black100,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14.sp,
              color: ColorManager.black60,
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
