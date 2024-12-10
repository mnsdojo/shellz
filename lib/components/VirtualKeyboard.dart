import 'package:flutter/material.dart';

class VirtualKeyBoard extends StatelessWidget {
  final Function(String) onKeyPress;
  const VirtualKeyBoard({
    super.key,
    required this.onKeyPress,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
