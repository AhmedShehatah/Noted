import 'package:flutter/material.dart';

import '../constants/brand_colors.dart';

class AppStyle {
  static iconButtonMainStyle() => IconButton.styleFrom(
        side:
            const BorderSide(color: Color(0x00000000), style: BorderStyle.none),
        backgroundColor: BrandColors.lightGrey,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      );
}
