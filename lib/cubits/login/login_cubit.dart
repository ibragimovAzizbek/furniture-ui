import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furniture/cubits/login/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInit());

  final emailCtx = TextEditingController();
  final passCtx = TextEditingController();

  ValueNotifier<bool> isHidden = ValueNotifier(true);

  ValueNotifier<bool> consentGiven = ValueNotifier(false);

  changePassHiddenStatus() {
    isHidden.value = !isHidden.value;
    emit(LoginInit());
  }

  changeCheckBox() {
    consentGiven.value = !consentGiven.value;
    emit(LoginInit());
  }
}
