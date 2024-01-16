import 'package:flutter/material.dart';
import 'package:navigate_with_inherited/support/service_locator/service_locator_provider.dart';
import 'package:navigate_with_inherited/support/utils/mobile_router.dart';

void main() {
  ServiceLocator.initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: MobileRouter.routes,
      initialRoute: MobileRouter.initialRoute,
    );
  }
}
