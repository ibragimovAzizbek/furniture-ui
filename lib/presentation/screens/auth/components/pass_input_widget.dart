import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture/cubits/login/login_cubit.dart';
import 'package:furniture/cubits/signUp/sign_up_cubit.dart';
import 'package:furniture/presentation/resource/colors_manager.dart';

class PasswordInputWidget extends StatelessWidget {
  const PasswordInputWidget({
    super.key,
    this.itIsSignUp = false,
    required this.ctx,
  });

  final bool itIsSignUp;
  final TextEditingController ctx;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35.w),
      child: TextFormField(
        controller: ctx,
        obscureText: context.watch<LoginCubit>().isHidden.value,
        decoration: InputDecoration(
          labelText: "Password",
          labelStyle: TextStyle(
            // fontSize: 13.sp,
            color: ColorManager.b4B6B5,
          ),
          suffixIcon: ValueListenableBuilder(
            valueListenable: context.watch<LoginCubit>().isHidden,
            builder: (context, value, child) {
              return IconButton(
                icon: context.watch<LoginCubit>().isHidden.value
                    ? const Icon(Icons.remove_red_eye_outlined)
                    : const Icon(Icons.visibility_off_outlined),
                onPressed: () {
                  context.read<LoginCubit>().changePassHiddenStatus();
                },
              );
            },
          ),
        ),
        onChanged: (s) {
          itIsSignUp ? context.read<SignUpCubit>().checkFields() : {};
          print("### PASS ###");
        },
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your password';
          } else if (value.length < 6) {
            return 'Password must be at least 6 characters long';
          }
          return null;
        },
      ),
    );
  }
}
