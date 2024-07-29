import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture/cubits/login/login_cubit.dart';

class PasswordInputWidget extends StatelessWidget {
  const PasswordInputWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35.w),
      child: TextFormField(
        controller: context.watch<LoginCubit>().passCtx,
        obscureText: context.watch<LoginCubit>().isHidden.value,
        decoration: InputDecoration(
          hintText: 'Password',
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
      ),
    );
  }
}