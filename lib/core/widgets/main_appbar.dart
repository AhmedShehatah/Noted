import 'package:flutter/material.dart';

import '../../controller/notes_controller.dart';
import '../constants/brand_colors.dart';
import '../di/di_manager.dart';
import '../styles/app_styles.dart';
import 'search_field.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MainAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(50);
  @override
  State<MainAppBar> createState() => _MainAppBarState();
}

class _MainAppBarState extends State<MainAppBar> {
  bool isSearching = false;
  void toggleSearch() {
    setState(() {
      isSearching = !isSearching;
    });
  }

  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: BrandColors.grey,
        title: isSearching ? _searchAppBar() : _normalAppBar());
  }

  Widget _searchAppBar() {
    return Row(
      children: [
        SearchField(
            controller: _controller,
            search: (searchword) {
              DIManager.findDep<NotesController>().search(searchword);
            }),
        const Spacer(),
        IconButton.outlined(
            color: Colors.white,
            onPressed: () {
              _controller.clear();
              DIManager.findDep<NotesController>().search("");

              toggleSearch();
            },
            style: AppStyle.iconButtonMainStyle(),
            icon: const Icon(Icons.cancel_outlined))
      ],
    );
  }

  Widget _normalAppBar() {
    return Row(
      children: [
        const Text(
          "NOTED",
          style: TextStyle(color: Colors.white),
        ),
        const Spacer(),
        IconButton.outlined(
            style: AppStyle.iconButtonMainStyle(),
            color: Colors.white,
            onPressed: () {
              toggleSearch();
            },
            icon: const Icon(Icons.search)),
        IconButton.outlined(
          onPressed: () {},
          icon: const Icon(Icons.info_outline),
          color: Colors.white,
          style: AppStyle.iconButtonMainStyle(),
        )
      ],
    );
  }
}
