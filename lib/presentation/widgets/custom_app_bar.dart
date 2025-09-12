import 'package:flutter/material.dart';
import 'package:yummyai/presentation/screens/home_page.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'YummyAI',
        style: TextStyle(
          color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      backgroundColor: Theme.of(context).colorScheme.secondary,
      actions: [
        IconButton(
          onPressed: logOut,
          icon: Icon(Icons.logout),
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
