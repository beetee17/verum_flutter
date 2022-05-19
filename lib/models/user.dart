import 'dart:typed_data';

class User {
  final String email;
  final String username;
  final String bio;
  final String avatarURL;

  const User({
    required this.email,
    required this.username,
    required this.bio,
    required this.avatarURL
  });

  Map<String, dynamic> toJson() => {
    'username': username,
    'avatarURL': avatarURL,
    'email': email,
    'bio': bio,
  };
}