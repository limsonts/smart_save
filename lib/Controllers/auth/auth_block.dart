import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:smart_save/Controllers/auth/auth_event.dart';
import 'package:smart_save/Controllers/auth/auth_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(Uninitialized());

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is AppStarted) {
      // Simulate checking if the user is authenticated or not
      await Future.delayed(Duration(seconds: 2));
      final bool isAuthenticated = false; // You can implement your authentication logic here
      if (isAuthenticated) {
        yield Authenticated();
      } else {
        yield Unauthenticated();
      }
    } 

    if (event is LoggedIn) {
      yield Authenticated();
    }

    if (event is LoggedOut) {
      yield Unauthenticated();
    }




    
  }
     

  
}