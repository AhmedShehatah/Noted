import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'core/constants/brand_colors.dart';
import 'core/navigator/route_generator.dart';
import 'data/models/notesList.dart';

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
      initialRoute: NotesList.routeName,
      builder: (BuildContext context, Widget? widget) {
        return Container(
          child: widget,
        );
      },
    );
  }
}
