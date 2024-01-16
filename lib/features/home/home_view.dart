import 'package:flutter/material.dart';
import 'package:navigate_with_inherited/features/settings/di/settings_module.dart';
import 'package:navigate_with_inherited/support/service_locator/service_locator_provider.dart';

abstract class HomeViewModelProtocol with ChangeNotifier {}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final viewModel = ServiceLocator.get<HomeViewModelProtocol>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME', style: TextStyle(fontSize: 18)),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, SettingsModule.settingsRoute);
          },
          child: const Text('Ir para configurações'),
        ),
      ),
    );
  }
}
