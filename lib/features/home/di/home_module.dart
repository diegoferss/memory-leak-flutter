import 'package:navigate_with_inherited/features/home/home_view.dart';
import 'package:navigate_with_inherited/features/home/home_view_model.dart';
import 'package:navigate_with_inherited/support/service_locator/service_locator_provider.dart';

class HomeModule extends AppModule {
  static const String homeRoute = 'home';

  @override
  void registerDependencies() {
    ServiceLocator.registerFactory<HomeViewModelProtocol>(() {
      return HomeViewModel();
    });
  }
}
