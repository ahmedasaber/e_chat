import 'package:bloc/bloc.dart';
import 'package:e_chat/data/models/user-model/auth_response_model.dart';
import 'package:e_chat/data/repositories/auth-repo/auth-repository.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepo;

  AuthBloc(this.authRepo) : super(AuthInitial()) {
    on<GoogleSignInRequested>((event, emit) async {
      emit(AuthLoading());
      try {
        final AuthResponseModel? authResponseModel = await authRepo.signInWithGoogle();
        if (authResponseModel != null) {
          emit(Authenticated(authResponseModel));
        } else {
          emit(Unauthenticated());
        }
      } catch (e) {
        emit(AuthError(e.toString()));
      }
    });
    on<GoogleSignOutRequested>((event, emit) async{
      try {
        await authRepo.signOut();
        emit(Unauthenticated());
      } catch (e) {
        emit(AuthError(e.toString()));
      }
    });
  }
}
