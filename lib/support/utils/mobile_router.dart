import 'package:flutter/material.dart';
import 'package:navigate_with_inherited/features/home/di/home_module.dart';
import 'package:navigate_with_inherited/features/home/home_view.dart';
import 'package:navigate_with_inherited/features/settings/di/settings_module.dart';
import 'package:navigate_with_inherited/features/settings/settings_view.dart';

class MobileRouter {
  static const String initialRoute = HomeModule.homeRoute;

  static final Map<String, WidgetBuilder> routes = {
    HomeModule.homeRoute: (_) => const HomeView(),
    SettingsModule.settingsRoute: (_) => const SettingsView(),
  };
}
