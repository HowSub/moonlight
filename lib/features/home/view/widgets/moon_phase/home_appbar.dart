import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moonlight/features/home/view/widgets/widgets.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: dateText(),
      leadingWidth: 200,
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {
            context.go('/profile');
          },
          icon: const Icon(Icons.account_circle, size: 40, color: Colors.white),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
