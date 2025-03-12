import 'package:fakahany/features/auth/domain/entities/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.name,
    required super.email,
    required super.uId,
  });

  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
      name: user.displayName ?? '',
      email: user.email ?? '',
      uId: user.uid,
    );
  }

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json['name'],
        email: json['email'],
        uId: json['uid'],
      );

  factory UserModel.fromEntity(UserEntity userEntity) => UserModel(
        name: userEntity.name,
        email: userEntity.email,
        uId: userEntity.uId,
      );

  toMap() => {'name': name, 'email': email, 'uid': uId};
}
