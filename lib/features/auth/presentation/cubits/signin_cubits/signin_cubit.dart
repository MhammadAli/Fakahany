import 'package:bloc/bloc.dart';
import 'package:fakahany/features/auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/user_entity.dart';

part 'signin_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.authRepo) : super(SignInInitial());

  final AuthRepo authRepo;

  Future<void> signIn(String email, String password) async {
    emit(SignInLoading());
    final result = await authRepo.signInWithEmailAndPassword(
      email,
      password,
    );

    result.fold((failure) => emit(SignInFailure(message: failure.message)),
        (userEntity) => emit(SignInSuccess(userEntity: userEntity)));
  }

  Future<void> signInWithGoogle() async {
    emit(SignInLoading());
    final result = await authRepo.signInWithGoogle();
    result.fold((failure) => emit(SignInFailure(message: failure.message)),
        (userEntity) => emit(SignInSuccess(userEntity: userEntity)));
  }
}
