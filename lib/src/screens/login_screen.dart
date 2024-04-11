import 'package:flutter/material.dart';
import 'package:login_bloc/src/blocs/bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
          emailField(),
          passwordField(),
          Container(
            margin: EdgeInsets.only(top: 25.0),
          ),
          submitButton(),
        ],
      ),
    );
  }

  Widget emailField() {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@host.com',
        // errorText: 'invalid email',
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }

  Widget passwordField() {
    return StreamBuilder(
        stream: bloc.password,
        builder: (context, snapshot) {
          return TextField(
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Password',
              errorText: snapshot.hasError ? snapshot.error.toString() : null,
            ),
            onChanged: bloc.changePassword,
          );
        });
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: () {},
      child: Text('Submit!'),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
    );
  }
}
