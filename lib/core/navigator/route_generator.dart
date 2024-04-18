import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import '../../data/db/setup/db_setup.dart';
import '../../features/editor/page/editor.dart';
import '../../features/show/page/show_note.dart';
import '../../features/notes_list_page.dart';

class RouteGenerator {
  static Route? generateRoutes(RouteSettings settings) {
    final args = settings.arguments;
    return PageRouteBuilder(
      transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
      ) {
        return SharedAxisTransition(
          animation: animation,
          fillColor: Colors.white,
          secondaryAnimation: secondaryAnimation,
          transitionType: SharedAxisTransitionType.horizontal,
          child: child,
        );
      },
      reverseTransitionDuration: const Duration(milliseconds: 125),
      transitionDuration: const Duration(milliseconds: 225),
      pageBuilder: (c, a1, a2) {
        return getPage(settings, args);
      },
      settings: settings,
    );
  }

  static Widget getPage(RouteSettings settings, args) {
    switch (settings.name) {
      case EditorPage.routeName:
        return const EditorPage();
      case ShowNote.routeName:
        return ShowNote(
          note: settings.arguments as NoteData,
        );
      case NotesListPage.routeName:
        return const NotesListPage();
      default:
        settings = RouteSettings(
            arguments: settings.arguments, name: DefaultRoute.routeName);
        return const DefaultRoute();
    }
  }
}

class DefaultRoute extends StatelessWidget {
  static const routeName = '/DefaultRoute';
  const DefaultRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
