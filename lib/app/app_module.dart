import 'package:flutter_modular/flutter_modular.dart';
import 'package:marmita_express/app/modules/cart/cart_module.dart';
import 'package:marmita_express/app/shared/utils/pages/splash_page.dart';
import 'package:marmita_express/app/shared/utils/utils/themes/theme_preferences.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton<ThemePreferences>((i) => ThemePreferences()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (context, args) => const SplashPage(),
    ),
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/cart', module: CartModule()),
  ];
}
