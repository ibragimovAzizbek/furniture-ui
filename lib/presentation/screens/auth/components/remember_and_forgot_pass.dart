import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture/cubits/login/login_cubit.dart';
import 'package:furniture/presentation/resource/colors_manager.dart';

class RememberAndForgotPass extends StatelessWidget {
  const RememberAndForgotPass({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Checkbox.adaptive(
                value: context.watch<LoginCubit>().consentGiven.value,
                activeColor: ColorManager.b4D5E0,
                onChanged: (s) {
                  context.read<LoginCubit>().changeCheckBox();
                },
              ),
              Text(
                "Remember",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: ColorManager.c897E73,
                ),
              ),
            ],
          ),
          TextButton(
            child: Text(
              "Forget Password?",
              style: TextStyle(
                fontSize: 16.sp,
                color: ColorManager.c897E73,
              ),
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
