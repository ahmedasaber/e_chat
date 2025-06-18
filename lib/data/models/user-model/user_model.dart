class UserModel {
  final String? id;
  final String? email;
  final String? name;
  final String? photo;

  UserModel({
    required this.id,
    required this.email,
    required this.name,
    required this.photo,
  });

  factory UserModel.fromJson(Map<String, dynamic> jsonData) {
    return UserModel(
      id: jsonData['id'],
      email: jsonData['email'],
      name: jsonData['name'],
      photo: jsonData['photo'],
    );
  }
}
