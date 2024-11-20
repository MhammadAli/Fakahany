import 'package:fakahany/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<UserEntity> createUserWithEmailAndPassword(
    String email,
    String password,
  );
}
