import 'package:marmita_express/app/modules/payment/payment_page.dart';
import 'package:marmita_express/app/modules/payment/payment_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marmita_express/app/modules/payment/shared/store/client_payment_store.dart';

class PaymentModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ClientPaymentStore()),
    Bind.lazySingleton((i) => PaymentStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (context, args) => PaymentPage(
        amount: args.data,
      ),
    ),
  ];
}
