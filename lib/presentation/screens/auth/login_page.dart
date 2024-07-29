import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/presentation/resource/assets_manager.dart';
import 'package:furniture/presentation/resource/colors_manager.dart';
import 'package:furniture/presentation/screens/auth/components/eleveted_button_widget.dart';
import 'package:furniture/presentation/screens/auth/components/email_input_widget.dart';
import 'package:furniture/presentation/screens/auth/components/pass_input_widget.dart';
import 'package:furniture/presentation/screens/auth/components/remember_and_forgot_pass.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.bgWhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: ColorManager.b4D5E0,
            height: 307.h,
            width: double.infinity,
            padding: EdgeInsets.only(left: 29.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 68.05.h),
                SvgPicture.asset(AppIcons.logoBlack),
                SizedBox(height: 28.05.h),
                Text(
                  "Welcome Back!",
                  style: TextStyle(
                    fontSize: 22.sp,
                    color: ColorManager.black100,
                  ),
                ),
                SizedBox(height: 11.05.h),
                Text(
                  "Please sign in to your account",
                  style: TextStyle(
                    fontSize: 32.sp,
                    color: ColorManager.black100,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 28.h),
          titleText("Email Address"),
          SizedBox(height: 6.h),
          // Email input
          const EmailInputWidget(),
          SizedBox(height: 28.h),
          titleText("Password"),
          SizedBox(height: 6.h),
          // Pass input
          const PasswordInputWidget(),
          SizedBox(height: 31.5.h),
          const RememberAndForgotPass(),
          SizedBox(height: 45.h),
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
