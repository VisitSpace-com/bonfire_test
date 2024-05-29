import 'package:flutter/material.dart';

class NameButton extends StatelessWidget {
  final String name;

  const NameButton({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(name),
    );
  }
}
