import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shellz/auth/AppState.dart';
import 'package:shellz/routes/Login.dart';
import 'package:shellz/routes/Terminal.dart';
import 'package:shellz/theme/theme.dart';

void main() {
  runApp(const RemoteShellApp());
}

class RemoteShellApp extends StatelessWidget {
  const RemoteShellApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppState(),
      child: Consumer<AppState>(
        builder: (context, appstate, _) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Shellz",
            home: appstate.isLoggedIn
                ? const TerminalScreen()
                : const LoginScreeen(),
            routes: {
              "/login": (context) => const LoginScreeen(),
              "/terminal": (context) => const TerminalScreen()
            },
            theme: HackerTheme.darkTheme,
          );
        },
      ),
    );
  }
}
