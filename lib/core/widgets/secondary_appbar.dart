import 'package:flutter/material.dart';

import '../constants/brand_colors.dart';
import '../di/di_manager.dart';
import '../styles/app_styles.dart';

class SecondaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SecondaryAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(backgroundColor: BrandColors.grey, title: _buildBar());
  }

  Widget _buildBar() {
    return Row(
      children: [
        BackButton(
          onPressed: () {
            DIManager.findNavigator().pop();
          },
          color: BrandColors.white,
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
