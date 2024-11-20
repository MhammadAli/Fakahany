import 'package:dartz/dartz.dart';
import 'package:fakahany/core/errors/failures.dart';
import 'package:fakahany/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure,UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
  );
}
