import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'controller/notes_controller.dart';
import 'core/constants/brand_colors.dart';
import 'core/di/di_manager.dart';
import 'core/navigator/route_generator.dart';
import 'core/utils/screen_utils.dart';
import 'core/widgets/main_appbar.dart';
import 'core/widgets/secondary_appbar.dart';
import 'features/notes_list_page.dart';

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
        appBar: const MainAppBar(),
        body: SizedBox(
          width: 350.width,
          height: 286.73.height,
          child: ElevatedButton(
            onPressed: () {
              DIManager.findDep<NotesController>()
                  .insertNote(title: 'title', content: 'title');
            },
            child: const Text("hello world"),
          ),
        ),
      ),
      initialRoute: NotesListPage.routeName,
      builder: (BuildContext context, Widget? widget) {
        return Container(
          child: widget,
        );
      },
    );
  }
}
