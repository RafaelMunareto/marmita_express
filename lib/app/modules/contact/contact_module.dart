import 'package:marmita_express/app/modules/contact/contact_page.dart';
import 'package:marmita_express/app/modules/contact/contact_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ContactModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ContactStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (context, args) => ContactPage(
        amount: args.data,
      ),
      transition: TransitionType.fadeIn,
    ),
  ];
}
