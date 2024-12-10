import 'package:flutter/material.dart';
import 'package:shellz/components/LoginForm.dart';

class LoginScreeen extends StatefulWidget {
  const LoginScreeen({super.key});

  @override
  State<LoginScreeen> createState() => _LoginScreeenState();
}

class _LoginScreeenState extends State<LoginScreeen> {
  final TextEditingController _hostController = TextEditingController();

  final TextEditingController _portController =
      TextEditingController(text: "22");

  final TextEditingController _usernameController =
      TextEditingController(text: "");

  final TextEditingController _passwordController =
      TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(
            16.0,
          ),
          child: LoginForm(
            hostController: _hostController,
            portController: _portController,
            usernameController: _usernameController,
            passwordController: _passwordController,
            onSubmit: () async => {},
          ),
        ),
      ),
    );
  }
}

//  Todo => Add the ssh login and sftp support
