import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture/cubits/signUp/sign_up_cubit.dart';
import 'package:furniture/cubits/signUp/sign_up_state.dart';
import 'package:furniture/presentation/resource/colors_manager.dart';
import 'package:furniture/presentation/screens/auth/components/auth_basic_container.dart';
import 'package:furniture/presentation/screens/auth/components/eleveted_button_widget.dart';
import 'package:furniture/presentation/screens/auth/components/input_widget.dart';
import 'package:furniture/presentation/screens/auth/components/pass_input_widget.dart';
import 'package:furniture/presentation/screens/auth/components/phone_num_input.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) {
        if (state is SignUpInitial) {
          return BodySignUp(
            formKey: _formKey,
            function: null,
            containerColor: ColorManager.eECE91,
          );
        } else if (state is SignUpAllFieldsAreFilled) {
          return BodySignUp(
            formKey: _formKey,
            function: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/home',
                (route) => false,
              );
            },
            containerColor: ColorManager.aBCF9F,
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    ));
  }

  Padding titleText(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35.w),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 13.sp,
          color: ColorManager.b4B6B5,
        ),
      ),
    );
  }
}

class BodySignUp extends StatelessWidget {
  BodySignUp({
    super.key,
    required GlobalKey<State<StatefulWidget>> formKey,
    required this.function,
    required this.containerColor,
  });

  Function? function;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AuthBasicContainer(
            title: "Create new  Account! ",
            subtitle: "Please fill in the form to continue",
            color: containerColor,
          ),

          SizedBox(height: 28.h),
          // Data input
          Column(
            children: [
              InputWidget(
                labelText: 'Full name',
                ctx: context.watch<SignUpCubit>().userNameCtx,
                itIsSignUp: true,
              ),
              SizedBox(height: 28.h),
              // Email input
              InputWidget(
                labelText: 'Email Address',
                ctx: context.watch<SignUpCubit>().emailCtx,
                itIsSignUp: true,
              ),
              SizedBox(height: 28.h),
              PhoneNumInput(
                ctx: context.watch<SignUpCubit>().phoneCtx,
              ),
              SizedBox(height: 28.h),
              PasswordInputWidget(
                itIsSignUp: true,
                ctx: context.watch<SignUpCubit>().passCtx,
              ),
              SizedBox(height: 31.5.h),
            ],
          ),
          // Login button
          ElevetedButtonWidget(
            widget: Text(
              "Create Account",
              style: TextStyle(
                fontSize: 16.sp,
                color: ColorManager.bgWhite,
              ),
            ),
            bgColor: ColorManager.eA592A,
            function: function,
          ),

          SizedBox(height: 31.h),
          // Do u have not account button
          Center(
            child: InkWell(
              child: RichText(
                text: TextSpan(
                  text: "Have an Account ? ",
                  style: TextStyle(
                    color: ColorManager.c897E73,
                    fontSize: 14.sp,
                  ),
                  children: [
                    TextSpan(
                      text: "Sign In",
                      style: TextStyle(
                        color: ColorManager.fF912F,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          )
        ],
      ),
    );
  }
}
