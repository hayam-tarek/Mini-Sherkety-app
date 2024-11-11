import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sherkety_flutter_app/features/auth/data/repository/auth_repository.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view_model/sign_in_state.dart';

class SignInNotifier extends StateNotifier<SignInState> {
  SignInNotifier(this.authRepository) : super(SignInInitial());
  final AuthRepository authRepository;
  Future<void> signIn({
    required String verificationId,
    required String smsCode,
  }) async {
    state = SignInLoading();
    try {
      var result = await authRepository.signInWithCredential(
        verificationId: verificationId,
        smsCode: smsCode,
      );
      result.fold(
        (failure) => state = SignInFailure(failure),
        (success) => state = SignInSuccess(),
      );
    } catch (e) {
      state = SignInFailure('An unexpected error occurred');
      log('Error: $e');
    }
  }
}
