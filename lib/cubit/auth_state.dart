part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

// JIKA AUTH SUKSES
class AuthSuccess extends AuthState {
  final UserModel user;

  AuthSuccess(this.user);

  @override
  // TODO: implement props
  List<Object> get props => [user];
}

// JIKA AUTH GAGAL
class AuthFailed extends AuthState {
  final String erorr;

  AuthFailed(this.erorr);

  @override
  // TODO: implement props
  List<Object> get props => [erorr];
}
