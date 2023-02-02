import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppStateEvent, AppState> {

  AppBloc() : super(const LoadingAppState()) {
    on<WelcomePageEvent>(_onWelcomePage);
    on<CompleteWelcomeEvent>(_onCompleteWelcome);
    on<LoginPageEvent>(_loginPageEvent);
    on<CompleteLoginEvent>(loginComplete);
    on<OnboardingCompleteEvent>(onboardingComplete);
  }
  }

  Future<void> loginComplete(
    CompleteLoginEvent event,
    Emitter<AppState> emit,
  ) async {
  }

  Future<void> onboardingComplete(
    OnboardingCompleteEvent event,
    Emitter<AppState> emit,
  ) async {
  }

  FutureOr<void> _onWelcomePage(
    WelcomePageEvent event,
    Emitter<AppState> emit,
  ) async {
    emit(const WelcomeState());
  }

  FutureOr<void> _onCompleteWelcome(
    CompleteWelcomeEvent event,
    Emitter<AppState> emit,
  ) async {
  }

  FutureOr<void> _loginPageEvent(
    LoginPageEvent event,
    Emitter<AppState> emit,
  ) async {
  }
