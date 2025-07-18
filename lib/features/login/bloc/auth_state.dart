part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class Authenticated extends AuthState {
  final AuthResponseModel authModel;

  Authenticated(this.authModel);
}

final class Unauthenticated extends AuthState {}

final class AuthError extends AuthState {
  final String message;

  AuthError(this.message);
}


