import 'dart:async';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  Future<Either<String, bool>> linkEmailPassword({
    required String email,
    required String password,
  }) async {
    try {
      final FirebaseAuth auth = FirebaseAuth.instance;
      final User? user = auth.currentUser;
      if (user != null) {
        final credential = EmailAuthProvider.credential(
          email: email,
          password: password,
        );
        await user.linkWithCredential(credential);
        return const Right(true);
      } else {
        return const Left('User is null');
      }
    } on FirebaseAuthException catch (e) {
      log('Error: ${e.message}');
      return Left(e.message ?? 'An unknown error occurred');
    } catch (e) {
      log(e.toString());
      return const Left('An unexpected error occurred');
    }
  }

  Future<Either<String, bool>> signInWithCredential({
    required String verificationId,
    required String smsCode,
  }) async {
    try {
      final credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      );
      await FirebaseAuth.instance.signInWithCredential(credential);
      log('sing in with credential');
      return const Right(true);
    } on FirebaseAuthException catch (e) {
      log('Error: ${e.message}');
      return Left(e.message ?? 'An unknown error occurred');
    } catch (e) {
      log(e.toString());
      return const Left('An unexpected error occurred');
    }
  }

  Future<Either<String, String>> register({
    required String code,
    required String phone,
  }) async {
    final Completer<Either<String, String>> completer = Completer();
    try {
      final FirebaseAuth auth = FirebaseAuth.instance;

      await auth.verifyPhoneNumber(
        phoneNumber: code + phone,
        verificationCompleted: (PhoneAuthCredential credential) async {
          // await _auth.signInWithCredential(
          //   credential,
          // );
          // log('sing in with credential');
        },
        verificationFailed: (FirebaseAuthException e) {
          if (!completer.isCompleted) {
            completer.complete(Left(e.message ?? 'Verification failed'));
            log('Verification failed: ${e.message}');
          }
        },
        codeSent: (String verificationId, int? resendToken) {
          log('Code sent to ${code + phone}');
          if (!completer.isCompleted) {
            completer.complete(Right(verificationId));
            log('Code sent to ${code + phone}');
          }
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          log('Auto retrieval timeout');
        },
      );
      return completer.future;
    } on FirebaseAuthException catch (e) {
      log('Error: ${e.message}');
      return Left(e.message ?? 'An unknown error occurred');
    } catch (e) {
      log('Error: $e');
      return const Left('An unexpected error occurred');
    }
  }
}
