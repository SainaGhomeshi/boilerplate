part of 'app_bloc.dart';

abstract class AppState extends Equatable {
  const AppState();

  // coverage:ignore-start
  @override
  List<Object?> get props => [];
// coverage:ignore-end
}

class LoadingAppState extends AppState {
  const LoadingAppState() : super();

  @override
  List<Object?> get props => [];
}

class WelcomeState extends AppState {
  const WelcomeState() : super();

  @override
  List<Object?> get props => [];
}

class AppLoginState extends AppState {
  const AppLoginState() : super();

  @override
  List<Object?> get props => [];
}

class OnboardingState extends AppState {
  const OnboardingState() : super();

  @override
  List<Object?> get props => [];
}

class HomeState extends AppState {
  const HomeState() : super();

  @override
  List<Object?> get props => [];
}
