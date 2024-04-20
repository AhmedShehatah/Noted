import 'package:flutter/material.dart';

import '../constants/brand_colors.dart';
import '../di/di_manager.dart';
import '../styles/app_styles.dart';

class EditAppBar extends StatelessWidget implements PreferredSizeWidget {
  const EditAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: BrandColors.grey,
        title: _buildBar());
  }

  Widget _buildBar() {
    return Row(
      children: [
        IconButton.outlined(
          style: AppStyle.iconButtonMainStyle(),
          color: BrandColors.white,
          onPressed: () {
            DIManager.findNavigator().pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        const Spacer(),
        Row(
          children: [
            IconButton(
                style: AppStyle.iconButtonMainStyle(),
                color: BrandColors.white,
                onPressed: () {},
                icon: const Icon(Icons.save)),
            IconButton(
                style: AppStyle.iconButtonMainStyle(),
                color: BrandColors.white,
                onPressed: () {},
                icon: const Icon(Icons.remove_red_eye_outlined))
          ],
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
