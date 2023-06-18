import 'package:flutter/cupertino.dart';
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
  late Future<List<Carts>> cartsList;
  ClientHomeStore client = Modular.get();

  HomeStoreBase() {
    loadData();
  }

  loadData() async {
    var cartsList = databaseHelper.getCarts();
    List<Carts> carts = await cartsList;
    client.setLen(carts.length);
  }
}
