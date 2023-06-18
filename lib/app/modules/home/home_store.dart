import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marmita_express/app/modules/home/shared/store/client_home_store.dart';
import 'package:mobx/mobx.dart';

import '../../shared/utils/database/db_helper.dart';
import '../../shared/utils/database/db_model.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  DatabaseHelper databaseHelper = DatabaseHelper();
  TextEditingController searchController = TextEditingController();
  ClientHomeStore client = Modular.get();

  HomeStoreBase() {
    loadData();
  }

  loadData() async {
    var cartsList = databaseHelper.getCarts();
    List<Carts> carts = await cartsList;
    client.setLen(carts.length);
    double newTotalPrice = 0;
    for (var order in carts) {
      newTotalPrice += order.price * order.quantity;
    }

    client.setTotalPrice(newTotalPrice);
    client.setCartList(carts);
  }

  insertCarts(date, order) {
    Carts cart = Carts(
        date: date,
        price: order.food!.price!.toDouble(),
        food: order.food!.name.toString(),
        restaurant: order.restaurant!.name.toString(),
        quantity: 1,
        imageURL: order.food!.imageUrl.toString());
    databaseHelper.insert(cart).then((value) {
      if (kDebugMode) {
        print('cart inserted. $value');
        loadData();
      }
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        print('error: ' + error.toString());
      }
    });
  }
}
