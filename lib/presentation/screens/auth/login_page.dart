import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/cubits/login/login_cubit.dart';
import 'package:furniture/presentation/resource/assets_manager.dart';
import 'package:furniture/presentation/resource/colors_manager.dart';
import 'package:furniture/presentation/screens/auth/components/auth_basic_container.dart';
import 'package:furniture/presentation/screens/auth/components/eleveted_button_widget.dart';
import 'package:furniture/presentation/screens/auth/components/input_widget.dart';
import 'package:furniture/presentation/screens/auth/components/pass_input_widget.dart';
import 'package:furniture/presentation/screens/auth/components/remember_and_forgot_pass.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.bgWhite,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AuthBasicContainer(
              title: "Welcome Back!",
              subtitle: "Please sign in to your account",
              color: ColorManager.b4D5E0,
            ),
            SizedBox(height: 28.h),
            // Email input
            InputWidget(ctx: context.watch<LoginCubit>().emailCtx),
            SizedBox(height: 28.h),
            // Pass input
            PasswordInputWidget(ctx: context.watch<LoginCubit>().passCtx),
            SizedBox(height: 31.5.h),
            const RememberAndForgotPass(),
            SizedBox(height: 60.h),
            // Login button
            ElevetedButtonWidget(
              widget: Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: ColorManager.bgWhite,
                ),
              ),
              bgColor: ColorManager.eA592A,
              function: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/home',
                  (route) => false,
                );
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 7.h),
              child: Center(
                child: Text(
                  "Or",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: ColorManager.c999C92,
                  ),
                ),
              ),
            ),
            // Login with google
            ElevetedButtonWidget(
              widget: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppIcons.googleLogo),
                  SizedBox(width: 12.w),
                  Text(
                    "Sign In with Gooogle",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: ColorManager.c222222,
                    ),
                  ),
                ],
              ),
              bgColor: ColorManager.f2E8DE,
              function: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/home',
                  (route) => false,
                );
              },
            ),
            SizedBox(height: 20.h),
            // Do u have not account button
            Center(
              child: InkWell(
                child: RichText(
                  text: TextSpan(
                    text: "Don’t have an Account ? ",
                    style: TextStyle(
                      color: ColorManager.c897E73,
                      fontSize: 14.sp,
                    ),
                    children: [
                      TextSpan(
                        text: "Sign Up",
                        style: TextStyle(
                          color: ColorManager.fF912F,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/signup');
                },
              ),
            )
          ],
        ),
      ),
    );
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
