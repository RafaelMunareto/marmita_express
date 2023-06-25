import 'package:flutter_modular/flutter_modular.dart';
import 'package:marmita_express/app/shared/store/client_store.dart';
import 'package:marmita_express/app/shared/utils/database/db_helper.dart';
import 'package:marmita_express/app/shared/utils/database/db_model.dart';
import 'package:mobx/mobx.dart';

part 'payment_store.g.dart';

class PaymentStore = PaymentStoreBase with _$PaymentStore;

abstract class PaymentStoreBase with Store {
  DatabaseHelper databaseHelper = DatabaseHelper();
  ClientStore client = Modular.get();
  PaymentStoreBase() {
    loadData();
  }

  void togglePaymentMethod(bool isOn) {
    client.setTurn(isOn);
  }

  loadData() async {
    var cartsList = databaseHelper.getCarts();
    List<Carts> carts = await cartsList;
    client.setCartList(carts);
    carts = await cartsList;
    client.setCarts(await cartsList);
    client.setLen(carts.length);
  }
}
