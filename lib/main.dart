import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multistore_app/bloc/register/register_bloc.dart';
import 'package:flutter_multistore_app/pages/auth/auth_page.dart';
import 'package:flutter_multistore_app/utils/light_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: light,
        home: const AuthPage(),
      ),
    );
  }
}
