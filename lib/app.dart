import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'controller/notes_controller.dart';
import 'core/constants/brand_colors.dart';
import 'core/di/di_manager.dart';
import 'core/navigator/route_generator.dart';
import 'core/utils/screen_utils.dart';
import 'data/models/addIcon.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoutes,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: BrandColors.white, background: BrandColors.grey),
        useMaterial3: true,
      ),
      initialRoute: AddIcon.routeName,
      builder: (BuildContext context, Widget? widget) {
        return Container(
          child: widget,
        );
      },
    );
  }
}
