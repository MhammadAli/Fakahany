import 'dart:developer';

import 'package:fakahany/core/errors/exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService {
  Future deleteUser() async {
    await FirebaseAuth.instance.currentUser!.delete();
  }

  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()} and code is ${e.code}');
      if (e.code == 'weak-password') {
        throw CustomException(message: 'الرقم السرى ضعيف جداً');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
            message: 'لقد قمت بالتسجيل مسبقاً. الرجاء تسجيل الدخول');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'تأكد من اتصالك بالإنترنت');
      } else {
        throw CustomException(
            message: 'لقد حدث خطأ ما. الرجاء المحاولة مرة أخرى');
      }
    } catch (e) {
      log('Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()}');

      throw CustomException(
          message: 'لقد حدث خطأ ما. الرجاء المحاولة مرة أخرى');
    }
  }

  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('Exception in FirebaseAuthService.signInWithEmailAndPassword: ${e.toString()} and code is ${e.code}');
      if (e.code == 'user-not-found') {
        throw CustomException(
            message: 'كلمة المرور أو البريد الإلمتروني غير صحيح');
      } else if (e.code == 'wrong-password') {
        throw CustomException(
            message: 'كلمة المرور أو البريد الإلمتروني غير صحيح');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'تأكد من اتصالك بالإنترنت');
      } else {
        throw CustomException(
            message: 'لقد حدث خطأ ما. الرجاء المحاولة مرة أخرى');
      }
    } catch (e) {
      log('Exception in FirebaseAuthService.signInWithEmailAndPassword: ${e.toString()}');
      throw CustomException(
          message: 'لقد حدث خطأ ما. الرجاء المحاولة مرة أخرى');
    }
  }

  Future<User> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
  }

  Future<User> signInWithFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);
    return (await FirebaseAuth.instance
            .signInWithCredential(facebookAuthCredential))
        .user!;
  }
}
