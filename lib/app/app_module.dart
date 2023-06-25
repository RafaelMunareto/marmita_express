import 'package:marmita_express/app/shared/store/client_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marmita_express/app/modules/cart/cart_module.dart';
import 'package:marmita_express/app/modules/contact/contact_module.dart';
import 'package:marmita_express/app/modules/payment/payment_module.dart';
import 'package:marmita_express/app/modules/restaurant/restaurant_module.dart';
import 'package:marmita_express/app/shared/utils/pages/splash_page.dart';
import 'package:marmita_express/app/shared/utils/repositories/localstorage/local_storage_interface.dart';
import 'package:marmita_express/app/shared/utils/repositories/localstorage/local_storage_share.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => ClientStore()),
    Bind.singleton<ILocalStorage>((i) => LocalStorageShare()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (context, args) => const SplashPage(),
    ),
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/cart', module: CartModule()),
    ModuleRoute('/contact', module: ContactModule()),
    ModuleRoute('/payment', module: PaymentModule()),
    ModuleRoute('/restaurant', module: RestaurantModule()),
  ];
}
