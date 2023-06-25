import 'package:marmita_express/app/modules/restaurant/restaurant_page.dart';
import 'package:marmita_express/app/modules/restaurant/restaurant_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RestaurantModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => RestaurantStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (context, args) => RestaurantPage(restaurant: args.data))
  ];
}
