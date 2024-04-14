import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:noted/widgets/text.dart';

import 'core/constants/brand_colors.dart';
import 'core/navigator/route_generator.dart';
import 'core/utils/screen_utils.dart';
import 'editor/editor.dart';

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
      home: Scaffold(
          body: SizedBox(
        width: 350.width,
        height: 286.73.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            AppFormField(
              hint: "Title",
            ),
            SizedBox(
              height: 20,
            ),
            AppFormField(
              hint: "Type Somthing...",
            ),
            // TextField(
            //   decoration: InputDecoration(
            //     hintText: 'Title',
            //     hintStyle: TextStyle(color: BrandColors.white),
            //   ),
            //   style: TextStyle(color: BrandColors.white),
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // TextField(
            //   decoration: InputDecoration(
            //     hintText: 'Title',
            //     hintStyle: TextStyle(color: BrandColors.white),
            //   ),
            //   style: TextStyle(color: BrandColors.white),
            // ),
          ],
        ),
      )),
      builder: (BuildContext context, Widget? widget) {
        return Container(
          child: widget,
        );
      },
    );
  }
}
