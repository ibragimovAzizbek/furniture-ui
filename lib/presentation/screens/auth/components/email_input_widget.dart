import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture/cubits/login/login_cubit.dart';

class EmailInputWidget extends StatelessWidget {
  const EmailInputWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35.w),
      child: TextFormField(
        controller: context.watch<LoginCubit>().emailCtx,
        decoration: const InputDecoration(
          hintText: 'Email',
        ),
      ),
    );
  }
}
