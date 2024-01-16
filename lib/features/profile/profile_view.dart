import 'package:flutter/material.dart';
import 'package:navigate_with_inherited/support/service_locator/service_locator_provider.dart';

abstract class ProfileViewModelProtocol with ChangeNotifier {}

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final viewModel = ServiceLocator.get<ProfileViewModelProtocol>();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
