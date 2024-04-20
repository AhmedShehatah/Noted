import 'package:flutter/material.dart';

import '../constants/brand_colors.dart';
import '../di/di_manager.dart';
import '../styles/app_styles.dart';

class ShowNoteAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ShowNoteAppBar({super.key, required this.edit});
  final Function() edit;

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
            IconButton.outlined(
              style: AppStyle.iconButtonMainStyle(),
              color: BrandColors.white,
              onPressed: () {
                edit();
              },
              icon: const Icon(Icons.mode_edit_outline_outlined),
            )
          ],
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
