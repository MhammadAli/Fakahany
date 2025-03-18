import 'dart:convert';

import 'package:fakahany/features/auth/domain/entities/user_entity.dart';

import '../../constants.dart';
import '../../features/auth/data/models/user_model.dart';
import '../services/shared_preferences_singleton.dart';

UserEntity getUser() {
  final jsonString = Prefs.getString(kUserData);

  final userEntity = UserModel.fromJson(jsonDecode(jsonString));

  return userEntity;
}
