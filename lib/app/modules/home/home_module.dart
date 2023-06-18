import 'package:marmita_express/app/modules/home/home_page.dart';
import 'package:marmita_express/app/modules/home/home_store.dart';
import 'package:marmita_express/app/modules/home/shared/store/client_home_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ClientHomeStore()),
    Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (context, args) => const HomePage(),
      transition: TransitionType.rightToLeftWithFade,
    ),
  ];
}
