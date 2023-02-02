part of 'app_bloc.dart';

abstract class AppStateEvent extends Equatable {
  const AppStateEvent();

  @override
  List<Object?> get props => [];
}

class WelcomePageEvent extends AppStateEvent {
  const WelcomePageEvent();
}

class CompleteWelcomeEvent extends AppStateEvent {
  const CompleteWelcomeEvent();
}

class CompleteLoginEvent extends AppStateEvent {
  const CompleteLoginEvent();
}

class LoginPageEvent extends AppStateEvent {
  const LoginPageEvent();
}

class OnboardingCompleteEvent extends AppStateEvent {
  const OnboardingCompleteEvent();
}
