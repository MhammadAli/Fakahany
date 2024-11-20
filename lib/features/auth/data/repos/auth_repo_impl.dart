import 'package:dartz/dartz.dart';
import 'package:fakahany/core/errors/failures.dart';
import 'package:fakahany/features/auth/domain/entities/user_entity.dart';
import 'package:fakahany/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password) {
    // TODO: implement createUserWithEmailAndPassword
    throw UnimplementedError();
  }
}
