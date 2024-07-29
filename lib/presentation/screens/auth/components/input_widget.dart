import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture/cubits/signUp/sign_up_cubit.dart';
import 'package:furniture/presentation/resource/colors_manager.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    super.key,
    this.labelText = "Email Address",
    required this.ctx,
    this.itIsSignUp = false,
  });

  final String labelText;
  final TextEditingController ctx;
  final bool itIsSignUp;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35.w),
      child: TextFormField(
        controller: ctx,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
            // fontSize: 13.sp,
            color: ColorManager.b4B6B5,
          ),
        ),
        onChanged: (s) {
          itIsSignUp ? context.read<SignUpCubit>().checkFields() : {};
          print("### EMAIL ###");
        },
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Fill in the field';
          } else if (value.length < 5) {
            return 'Password must be at least 5 characters long';
          }
          return null;
        },
      ),
    );
  }
}
