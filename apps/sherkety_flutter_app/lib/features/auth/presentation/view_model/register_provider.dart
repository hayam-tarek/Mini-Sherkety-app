import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sherkety_flutter_app/features/auth/data/repository/auth_repository.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view_model/regiser_state.dart';
import 'package:sherkety_flutter_app/features/auth/presentation/view_model/register_notifier.dart';

final registerProvider = StateNotifierProvider<RegisterNotifier, RegisterState>(
  (ref) {
    return RegisterNotifier(AuthRepository());
  },
);
