part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

final class GoogleSignInRequested  extends AuthEvent {}
final class GoogleSignOutRequested  extends AuthEvent {}