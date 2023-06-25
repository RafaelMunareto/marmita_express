import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marmita_express/app/shared/store/client_store.dart';
import 'package:marmita_express/app/shared/utils/data/data.dart';
import 'package:marmita_express/app/shared/utils/database/db_helper.dart';
import 'package:marmita_express/app/shared/utils/database/db_model.dart';
import 'package:marmita_express/app/shared/utils/repositories/auth/auth_repository_interface.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  DatabaseHelper databaseHelper = DatabaseHelper();
  TextEditingController searchController = TextEditingController();
  ClientStore client = Modular.get();
  IAuthRepository auth = Modular.get();

  HomeStoreBase() {
    getTheme();
    loadData();
  }

  getTheme() {
    auth.getTheme().then((value) => client.setTheme(value));
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

  void filterRestaurants() {
    client.setTextSearch(searchController.text);
    client.setFilteredRestaurants(restaurants
        .where((restaurant) => restaurant.name!
            .toLowerCase()
            .contains(client.textSearch.toLowerCase()))
        .toList());
  }
}
