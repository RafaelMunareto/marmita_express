import 'package:flutter_modular/flutter_modular.dart';
import 'package:marmita_express/app/shared/store/client_store.dart';
import 'package:marmita_express/app/shared/utils/database/db_helper.dart';
import 'package:marmita_express/app/shared/utils/database/db_model.dart';
import 'package:mobx/mobx.dart';

part 'cart_store.g.dart';

class CartStore = CartStoreBase with _$CartStore;

abstract class CartStoreBase with Store {
  DatabaseHelper databaseHelper = DatabaseHelper();
  late Future<List<Carts>> cartsList;
  ClientStore client = Modular.get();

  CartStoreBase() {
    loadData();
  }

  loadData() async {
    cartsList = databaseHelper.getCarts();
    List<Carts> carts = await cartsList;
    client.setIsEmpty(carts.isEmpty);
    client.setCartList(carts);
    double newTotalPrice = 0;
    client.setDeliveryTime(carts.length * 15);
    for (var order in carts) {
      newTotalPrice += order.price * order.quantity;
    }

    client.setTotalPrice(newTotalPrice);
    client.setLen(carts.length);
  }

  update(order) {
    databaseHelper.update(order);
    loadData();
  }

  delete(int id) {
    databaseHelper.delete(id);
    loadData();
  }
}
