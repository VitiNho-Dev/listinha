import 'package:flutter/material.dart';

import 'user_image_button.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('LISTINHA'),
      actions: const [
        Padding(
          padding: EdgeInsets.all(8),
          child: UserImageButton(),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 53);
}
