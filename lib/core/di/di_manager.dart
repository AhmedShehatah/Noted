import 'package:get_it/get_it.dart';

import '../../controller/notes_controller.dart';
import '../../data/db/dao/notes_dao.dart';
import '../../data/db/setup/db_setup.dart';
import '../navigator/app_navigator.dart';

final getIt = GetIt.instance;

class DIManager {
  DIManager._();
  static Future<void> initDI() async {
    _injectDep(AppNavigator());
    _injectDep(AppDatabase());
    _injectDep(NotesDao(findDep()));
    _injectDep(NotesController(findDep()));
  }

  static T findDep<T extends Object>({String? name}) {
    return getIt<T>(instanceName: name);
  }

  static AppNavigator findNavigator() {
    return findDep<AppNavigator>();
  }

  static T _injectDep<T extends Object>(T dependency, {String? name}) {
    getIt.registerSingleton<T>(dependency, instanceName: name);
    return getIt<T>();
  }

  static dispose() {
    getIt.reset();
  }
}
