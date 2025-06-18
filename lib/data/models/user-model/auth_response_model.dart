import 'package:e_chat/data/models/user-model/user_model.dart';

class AuthResponseModel {
  final String? accessToken;
  final UserModel? userModel;

  AuthResponseModel({required this.accessToken, required this.userModel});

  factory AuthResponseModel.fromJson(Map<String, dynamic> jsonData) {
    return AuthResponseModel(
      accessToken: jsonData['access_token'],
      userModel: UserModel.fromJson(jsonData['user']),
    );
  }
}
