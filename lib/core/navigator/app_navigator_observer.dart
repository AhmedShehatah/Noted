// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class AppNavigatorObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {}

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print(
        'This is never get called did pop ${route.settings.name} | ${previousRoute?.settings.name}');
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    print('This is never get called didRemove $route | $previousRoute');

    super.didRemove(route, previousRoute);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route? oldRoute}) {
    print('This is never get called didReplace $newRoute | $oldRoute');

    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didStartUserGesture(Route route, Route? previousRoute) {
    print(
        'This is never get called didStartUserGesture $route | $previousRoute');
    super.didStartUserGesture(route, previousRoute);
  }

  @override
  void didStopUserGesture() {
    print('This is never get called didStopUserGesture');
    super.didStopUserGesture();
  }
}
