import 'package:flutter/material.dart';
import 'package:login_bloc/src/blocs/provider.dart';

import 'screens/login_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      child: const MaterialApp(
        title: 'Log In!',
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}
