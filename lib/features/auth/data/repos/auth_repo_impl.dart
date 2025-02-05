import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fakahany/core/errors/failures.dart';
import 'package:fakahany/core/services/data_service.dart';
import 'package:fakahany/core/services/firebase_auth_service.dart';
import 'package:fakahany/features/auth/domain/entities/user_entity.dart';
import 'package:fakahany/features/auth/domain/repos/auth_repo.dart';
import 'package:fakahany/utils/backend_endpoints.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/errors/exceptions.dart';
import '../models/user_model.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;
  final DatabaseService databaseService;

  AuthRepoImpl(
      {required this.firebaseAuthService, required this.databaseService});

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final userEntity = UserEntity(
        name: name,
        email: email,
        uId: user.uid,
      );
      await addUserData(userEntity: userEntity);
      return right(
        userEntity,
      );
    } on CustomException catch (e) {
      await deleteUser(user);
      return left(
        ServerFailure(
          e.message,
        ),
      );
    } catch (e) {
      await deleteUser(user);
      log('Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}');
      return left(
        ServerFailure(
          'لقد حدث خطأ ما. الرجاء المحاولة مرة أخرى',
        ),
      );
    }
  }

  Future<void> deleteUser(User? user) async {
    if (user != null) {
      await firebaseAuthService.deleteUser();
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final user = await firebaseAuthService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final userEntity = await getUserData(uId: user.uid);
      return right(
        userEntity,
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

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithGoogle();
      UserEntity userEntity = UserModel.fromFirebaseUser(user);
      final isUserExists = await databaseService.checkIfDataExists(
        path: BackendEndpoints.isUserExists,
        documentId: user.uid,
      );
      if (isUserExists) {
        await getUserData(uId: user.uid);
      } else {
        await addUserData(userEntity: userEntity);
      }

      return right(
        userEntity,
      );
    } catch (e) {
      await deleteUser(user);
      log('Exception in AuthRepoImpl.signInWithGoogle: ${e.toString()}');
      return left(
        ServerFailure(
          'لقد حدث خطأ ما. الرجاء المحاولة مرة أخرى',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithFacebook();
      UserEntity userEntity = UserModel.fromFirebaseUser(user);
      await addUserData(userEntity: userEntity);
      return right(
        userEntity,
      );
    } catch (e) {
      await deleteUser(user);
      log('Exception in AuthRepoImpl.signInWithFacebook: ${e.toString()}');
      return left(
        ServerFailure(
          'لقد حدث خطأ ما. الرجاء المحاولة مرة أخرى',
        ),
      );
    }
  }

  @override
  Future addUserData({required UserEntity userEntity}) async {
    await databaseService.addData(
      path: BackendEndpoints.addUserData,
      data: userEntity.toMap(),
      documentId: userEntity.uId,
    );
  }

  @override
  Future<UserEntity> getUserData({required String uId}) async {
    final userData = await databaseService.getData(
      path: BackendEndpoints.getUserData,
      documentId: uId,
    );
    return UserModel.fromJson(userData);
  }
}
