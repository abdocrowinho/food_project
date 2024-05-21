part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class SignInSuccess extends AuthState {}

final class SignInLoading extends AuthState {}

final class SignInFailure extends AuthState {
  String errorMessage;
  SignInFailure(this.errorMessage);
}

final class RegisterSuccsess extends AuthState {}

final class RegisterLoading extends AuthState {}

final class RegisterFailure extends AuthState {
  String errorMessage;
  RegisterFailure(this.errorMessage);
}
