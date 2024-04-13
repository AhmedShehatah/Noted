import 'dart:ui';

import 'package:flutter/material.dart';

extension NumberExtentions on num {
  Size get _size =>
      MediaQueryData.fromView(PlatformDispatcher.instance.views.first).size;
  double get width => _size.width * toDouble() / 414;
  double get height => _size.height * toDouble() / 896;
}
