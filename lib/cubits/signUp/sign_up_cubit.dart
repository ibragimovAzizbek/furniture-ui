import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furniture/cubits/signUp/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  final TextEditingController userNameCtx = TextEditingController();
  final TextEditingController emailCtx = TextEditingController();
  final TextEditingController phoneCtx = TextEditingController();
  final TextEditingController passCtx = TextEditingController();

  checkFields() {
    if (userNameCtx.text.isEmpty ||
        emailCtx.text.isEmpty ||
        phoneCtx.text.isEmpty ||
        passCtx.text.isEmpty) {
      emit(SignUpInitial());
    } else {
      emit(SignUpAllFieldsAreFilled());
    }
  }
}
