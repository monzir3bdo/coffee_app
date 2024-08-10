import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState.initial());
  int onboardingCurrentIndex = 0;
  PageController onboardingController = PageController();
  onboardingIndexChanged(int index) {
    onboardingCurrentIndex = index;
    emit(AuthState.onboardingChanged(index: index));
  }
}
