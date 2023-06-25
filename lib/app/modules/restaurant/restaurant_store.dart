import 'package:flutter/foundation.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marmita_express/app/shared/store/client_store.dart';
import 'package:marmita_express/app/shared/utils/database/db_helper.dart';
import 'package:marmita_express/app/shared/utils/database/db_model.dart';
import 'package:mobx/mobx.dart';

part 'restaurant_store.g.dart';

class RestaurantStore = RestaurantStoreBase with _$RestaurantStore;

abstract class RestaurantStoreBase with Store {
  DatabaseHelper databaseHelper = DatabaseHelper();
  ClientStore client = Modular.get();

  RestaurantStoreBase() {
    loadData();
  }

  loadData() async {
    var cartsList = databaseHelper.getCarts();
    client.setCarts(await cartsList);

    client.setLen(client.carts.length);
  }

  insertCart(formattedDate, menuItem, name) {
    databaseHelper
        .insert(Carts(
            date: formattedDate,
            price: menuItem.price!.toDouble(),
            food: menuItem.name.toString(),
            restaurant: name.toString(),
            quantity: 1,
            imageURL: menuItem.imageUrl.toString()))
        .then((value) {
      if (kDebugMode) {
        print('cart inserted. $value');
      }
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        print('error: ' + error.toString());
      }
    });
    loadData();
  }
}
