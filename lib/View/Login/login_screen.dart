import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_save/Controllers/auth/auth_block.dart';
import 'package:smart_save/View/Login/Dashbord/dashboard_event.dart';
import 'package:smart_save/comman_widget/smart_save_button.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AuthenticationBloc _authenticationBloc =
        BlocProvider.of<AuthenticationBloc>(context);
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'smart save',
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 28,
                        color: Color.fromARGB(255, 7, 89, 156)),
                  )),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 35,
                    ),
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Login to your Account',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 18),
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    const Card(
                      elevation: 3,
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(3))),
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Card(
                      elevation: 2,
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(3))),
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    SmartSaveButton(
                      text: 'Sign In',
                      onPressed: () {
                        print('kewhfwehfweo');
                        Navigator.push(
                      context,
            MaterialPageRoute(builder: (context) => ProductGridPage()));
                      },
                    ),
                  ],
                ),
              ),
              Text(
                '- Or sigin with -',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Card(
                        elevation: 3,
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(3))),
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                          child: Icon(
                            Icons.g_mobiledata,
                            size: 30,
                            color: Colors.blue,
                          ),
                        )),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Card(
                        elevation: 3,
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(3))),
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                          child: Icon(
                            Icons.facebook_outlined,
                            size: 30,
                            color: Colors.blue,
                          ),
                        )),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Card(
                        elevation: 3,
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(3))),
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          child: Icon(
                            Icons.window_rounded,
                            size: 30,
                            color: Colors.blue,
                          ),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: RichText(
                    text: TextSpan(
                        text: 'Don\'t have an account? ',
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                        children: [
                      TextSpan(
                        text: 'Sign Up',
                        style: const TextStyle(
                          color: Color.fromARGB(255, 7, 89, 156),
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ])),
              )
            ],
          ),
        ),
      )),
    );
  }
}
