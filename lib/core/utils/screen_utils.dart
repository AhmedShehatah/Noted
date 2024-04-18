import 'dart:ui';

import 'package:flutter/material.dart';

extension NumberExtentions on num {
  Size get _screenSize =>
      MediaQueryData.fromView(PlatformDispatcher.instance.views.first).size;

  double get width => _screenSize.width * toDouble() / 428;

  double get height => _screenSize.height * toDouble() / 926;

  SizedBox get emptyWidth => SizedBox(width: width);

  SizedBox get emptyHeight => SizedBox(height: height);
  double get screenWidth => _screenSize.width;
  double get screenHeight => _screenSize.height;
  double fromHeight(double percent) => _screenSize.height * percent / 100.0;
  double fromWidth(double percent) => _screenSize.height * percent / 100.0;
}
