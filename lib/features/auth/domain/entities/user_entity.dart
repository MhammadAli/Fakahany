class UserEntity {
  UserEntity({
    required this.name,
    required this.email,
    required this.uId,
  });

  final String name, email, uId;

  toMap() => {'name': name, 'email': email, 'uid': uId};
}
