
 abstract class HomeNameAuthenticationState {}

 class HomeNameAuthenticationInitial extends HomeNameAuthenticationState {}
 class HomeNameAuthenticationLoading extends HomeNameAuthenticationState {}
 class HomeNameAuthenticationSuccess extends HomeNameAuthenticationState {
  final String name ;

  HomeNameAuthenticationSuccess({required this.name});
 }
 class HomeNameAuthenticationFailed extends HomeNameAuthenticationState {
  final String error ;

  HomeNameAuthenticationFailed({required this.error});
 }
