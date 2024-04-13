import 'package:flutter/material.dart';

import 'app.dart';
import 'core/di/di_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DIManager.initDI();

  runApp(const MyApp());
}
