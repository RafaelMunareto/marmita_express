import 'package:marmita_express/app/shared/utils/database/db_model.dart';
import 'package:mobx/mobx.dart';

part 'client_restaurant_store.g.dart';

class ClientRestaurantStore = _ClientRestaurantStoreBase
    with _$ClientRestaurantStore;

abstract class _ClientRestaurantStoreBase with Store {
  @observable
  List<Carts> cartsList = [];

  @action
  setCartList(value) => cartsList = value;

  @observable
  int len = 0;

  @action
  setLen(value) => len = value;

  @observable
  bool fav = false;

  @action
  setFav(value) => fav = value;

  @observable
  List<Carts> carts = [];

  @action
  setCarts(value) => carts = value;

  @observable
  var q = 0;
}
