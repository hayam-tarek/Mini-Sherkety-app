import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sherkety_flutter_app/features/auth/data/repository/auth_repository.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view_model/regiser_state.dart';

class RegisterNotifier extends StateNotifier<RegisterState> {
  RegisterNotifier(this.authRepository) : super(RegisterInitial());
  final AuthRepository authRepository;

  Future<void> register({required String code, required String phone}) async {
    state = RegisterLoading();
    try {
      var result = await authRepository.register(code: code, phone: phone);
      result.fold(
        (failure) => state = RegisterFailure(failure),
        (verificationId) => state = RegisterSuccess(verificationId),
      );
    } catch (e) {
      state = RegisterFailure('An unexpected error occurred');
      log('Error: $e');
    }
  }

  Future<void> linkEmailPassword({
    required String email,
    required String password,
  }) async {
    state = LinkEmailPasswordLoading();
    try {
      var result = await authRepository.linkEmailPassword(
        email: email,
        password: password,
      );
      result.fold(
        (failure) => state = LinkEmailPasswordFailure(failure),
        (success) => state = LinkEmailPasswordSuccess(),
      );
    } catch (e) {
      state = LinkEmailPasswordFailure('An unexpected error occurred');
      log('Error: $e');
    }
  }
}
