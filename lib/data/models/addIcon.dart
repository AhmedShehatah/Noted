import 'package:flutter/material.dart';

import '../../core/constants/brand_colors.dart';

class AddIcon extends StatelessWidget {
  const AddIcon({super.key});
  static const String routeName = "/add";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: BrandColors.grey,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
