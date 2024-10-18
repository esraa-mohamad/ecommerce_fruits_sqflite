
 class AuthenticationState {}

final class AuthenticationInitial extends AuthenticationState {}
//final class AuthenticationCreateDatabase extends AuthenticationState {}
final class AuthenticationInsertName extends AuthenticationState {}
final class AuthenticationLoading extends AuthenticationState {}
final class AuthenticationFailed extends AuthenticationState {
 final String error ;

  AuthenticationFailed({required this.error});
}
