import 'package:navigate_with_inherited/features/settings/settings_view.dart';
import 'package:navigate_with_inherited/features/settings/settings_view_model.dart';
import 'package:navigate_with_inherited/support/service_locator/service_locator_provider.dart';

class SettingsModule extends AppModule {
  static const String settingsRoute = 'settings';

  @override
  void registerDependencies() {
    ServiceLocator.registerFactory<SettingsViewModelProtocol>(() {
      return SettingsViewModel();
    });
  }
}
