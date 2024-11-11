import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sherkety_flutter_app/features/auth/data/repository/auth_repository.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view_model/sign_in_notifier.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view_model/sign_in_state.dart';

final signInProvider = StateNotifierProvider<SignInNotifier, SignInState>(
  (ref) {
    return SignInNotifier(AuthRepository());
  },
);
