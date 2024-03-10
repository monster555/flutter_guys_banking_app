import 'package:flutter/material.dart';
import 'package:flutter_guys_banking_app/ui/widgets/custom_app_bar/widgets/notifications_icon.dart';
import 'package:flutter_guys_banking_app/ui/widgets/custom_app_bar/widgets/profile_picture.dart';
import 'package:flutter_guys_banking_app/ui/widgets/custom_app_bar/widgets/title_with_name.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const TitleWithName(),
      actions: const [
        NotificationsIcon(),
        ProfilePicture(),
      ],
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
