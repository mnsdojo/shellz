import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  final TextEditingController hostController;
  final TextEditingController portController;
  final TextEditingController passwordController;
  final TextEditingController usernameController;

  final VoidCallback onSubmit;

  const LoginForm(
      {super.key,
      required this.hostController,
      required this.portController,
      required this.passwordController,
      required this.usernameController,
      required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: hostController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Host",
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          decoration: const InputDecoration(
              labelText: "Port", border: OutlineInputBorder()),
          controller: portController,
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          decoration: const InputDecoration(
              labelText: "Username", border: OutlineInputBorder()),
          controller: usernameController,
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          controller: passwordController,
          decoration: const InputDecoration(
              labelText: "Password", border: OutlineInputBorder()),
        ),
        const SizedBox(
          height: 10,
        ),
        const Center(
          child: ElevatedButton(onPressed: null, child: Text("Connect")),
        )
      ],
    );
  }
}
