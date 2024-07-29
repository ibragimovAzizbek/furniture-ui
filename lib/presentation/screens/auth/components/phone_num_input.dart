import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture/cubits/signUp/sign_up_cubit.dart';
import 'package:furniture/presentation/resource/colors_manager.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PhoneNumInput extends StatelessWidget {
  const PhoneNumInput({
    super.key,
    required this.ctx,
    this.itIsSignUp = false,
  });

  final TextEditingController ctx;
  final bool itIsSignUp;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35.w),
      child: TextFormField(
        controller: ctx,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: 'Phone Number',
          labelStyle: TextStyle(
            // fontSize: 13.sp,
            color: ColorManager.b4B6B5,
          ),
        ),
        inputFormatters: [
          MaskTextInputFormatter(
            mask: '+998 (##) ###-##-##',
            filter: {"#": RegExp(r'[0-9]')},
            type: MaskAutoCompletionType.lazy,
          ),
        ],
        textInputAction: TextInputAction.done,
        onChanged: (s) {
          itIsSignUp ? context.read<SignUpCubit>().checkFields() : {};
        },
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your phone number';
          }
          return null;
        },
      ),
    );
  }
}
