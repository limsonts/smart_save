import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_save/Controllers/auth/auth_block.dart';
import 'package:smart_save/Controllers/auth/auth_event.dart';
import 'package:smart_save/Controllers/auth/auth_state.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AuthenticationBloc _authenticationBloc =
        BlocProvider.of<AuthenticationBloc>(context);
    _authenticationBloc.add(AppStarted());
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        if (state is Authenticated) {
          // Navigate to authenticated screen
        } else if (state is Unauthenticated) {
          // Navigate to login screen
        }
      },
      child: const SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 7, 89, 156),
          body: Center(
            child: Text('smart save',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w900)),
          ),
        ),
      ),
    );
  }
}
