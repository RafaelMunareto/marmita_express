import 'package:marmita_express/app/modules/cart/cart_page.dart';
import 'package:marmita_express/app/modules/cart/cart_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CartModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CartStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (context, args) => const CartPage(),
      transition: TransitionType.rightToLeftWithFade,
    ),
  ];
}
