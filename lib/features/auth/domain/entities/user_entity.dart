class UserEntity {
  UserEntity({
    required this.name,
    required this.email,
    required this.uid,
  });

  final String name, email, uid;

  toMap() => {'name': name, 'email': email, 'uid': uid};
}
