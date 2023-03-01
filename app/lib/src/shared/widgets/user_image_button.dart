import 'package:flutter/material.dart';

class UserImageButton extends StatelessWidget {
  const UserImageButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return GestureDetector(
      child: CircleAvatar(
        backgroundColor: colorScheme.inversePrimary,
        child: const Text('A'),
      ),
    );
  }
}
