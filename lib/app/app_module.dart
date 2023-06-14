import 'package:marmita_express/app/modules/home/home_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marmita_express/app/shared/utils/utils/themes/theme_preferences.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton<ThemePreferences>((i) => ThemePreferences()),
    Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
  ];
}
