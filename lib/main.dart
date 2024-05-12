import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_save/Controllers/auth/auth_block.dart';
import 'package:smart_save/Controllers/auth/auth_state.dart';
import 'package:smart_save/Controllers/dashboard/dashboard.dart';
import 'package:smart_save/View/Login/login_screen.dart';
import 'package:smart_save/View/Login/splash_screen.dart';

void main() {
  runApp(App());
}
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Save',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:MultiBlocProvider(providers: 
      [ 
        BlocProvider<AuthenticationBloc>(
        create: (context) => AuthenticationBloc()
        ),

      ], 
      child: AppWrapper(),) 
      
    );
  }
}

class AppWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AuthenticationBloc _authenticationBloc =
        BlocProvider.of<AuthenticationBloc>(context);

    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        if (state is Uninitialized) {
          return SplashScreen();
        }
        if (state is Unauthenticated) {
          return LoginPage();
        }
        if (state is Authenticated) {
          return Container(
            color: Colors.greenAccent, // Example authenticated screen
            child: Center(
              child: Text('Authenticated Screen'),
            ),
          );
        }
        return Container(); // Placeholder for other states
      },
    );
  }
}


  