import 'package:flutter/material.dart';

import '../constants/brand_colors.dart';

class AppStyle {
  static iconButtonMainStyle() => IconButton.styleFrom(
        backgroundColor: BrandColors.grey,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      );
}
