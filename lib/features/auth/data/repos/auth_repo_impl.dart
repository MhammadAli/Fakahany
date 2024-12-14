import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fakahany/core/errors/failures.dart';
import 'package:fakahany/core/services/firebase_auth_service.dart';
import 'package:fakahany/features/auth/domain/entities/user_entity.dart';
import 'package:fakahany/features/auth/domain/repos/auth_repo.dart';

import '../../../../core/errors/exceptions.dart';
import '../models/user_model.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(
        UserModel.fromFirebaseUser(user),
      );
    } on CustomException catch (e) {
      return left(
        ServerFailure(
          e.message,
        ),
      );
    } catch (e) {
      log('Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}');
      return left(
        ServerFailure(
          'لقد حدث خطأ ما. الرجاء المحاولة مرة أخرى',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(
        UserModel.fromFirebaseUser(user),
      );
    } on CustomException catch (e) {
      return left(
        ServerFailure(
          e.message,
        ),
      );
    } catch (e) {
      log('Exception in AuthRepoImpl.signInWithEmailAndPassword: ${e.toString()}');
      return left(
        ServerFailure(
          'لقد حدث خطأ ما. الرجاء المحاولة مرة أخرى',
        ),
      );
    }
  }
}
