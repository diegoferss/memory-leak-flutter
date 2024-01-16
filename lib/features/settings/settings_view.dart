import 'package:flutter/material.dart';
import 'package:navigate_with_inherited/features/home/di/home_module.dart';
import 'package:navigate_with_inherited/support/service_locator/service_locator_provider.dart';

abstract class SettingsViewModelProtocol with ChangeNotifier {
  VoidCallback? teste;
}

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  final viewModel = ServiceLocator.get<SettingsViewModelProtocol>();

  @override
  void initState() {
    super.initState();
    viewModel.teste = () {
      Navigator.pushNamed(context, HomeModule.homeRoute);
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SETTINGS', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
