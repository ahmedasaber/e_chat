import 'dart:convert';
import 'package:e_chat/data/models/user-model/auth_response_model.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

class AuthRepository {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: ['email'],
    serverClientId: '1006337323485-icslqakga448h2qivsqrntge4n3pgit9.apps.googleusercontent.com',
  );

  Future<AuthResponseModel?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) return null;
      final googleAuth = await googleUser.authentication;

      return sendTokenToBackend(googleAuth.idToken);
    } catch (e) {
      throw Exception('Google sign-in failed: $e');
    }
  }

  Future<void> signOut() async {
    try {
      await _googleSignIn.signOut();
    } catch (e) {
      throw Exception('Sign-out failed: $e');
    }
  }

  Future<AuthResponseModel> sendTokenToBackend(String? idToken) async {
    final response = await http.post(
      Uri.parse("https://your-backend.com/api/auth/google"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"id_token": idToken}),
    );

    if (response.statusCode == 200) {
      return AuthResponseModel.fromJson(jsonDecode(response.body));
    }else{
      throw Exception('Backend authentication failed');
    }
  }
}
