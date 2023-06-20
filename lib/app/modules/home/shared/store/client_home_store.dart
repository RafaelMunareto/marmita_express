import 'package:marmita_express/app/shared/utils/database/db_model.dart';
import 'package:marmita_express/app/shared/utils/model/restaurant.dart';
import 'package:mobx/mobx.dart';

part 'client_home_store.g.dart';

class ClientHomeStore = _ClientHomeStoreBase with _$ClientHomeStore;

abstract class _ClientHomeStoreBase with Store {
  @observable
  int len = 0;

  @action
  setLen(value) => len = value;

  @observable
  double totalPrice = 0;

  @action
  setTotalPrice(value) => totalPrice = value;

  @observable
  List<Carts> cartsList = [];

  @action
  setCartList(value) => cartsList = value;

  @observable
  List<Carts> filteredCarts = [];

  @action
  setFilteredCarts(value) => filteredCarts = value;

  @observable
  List<Restaurant> filteredRestaurants = [];

  @action
  setFilteredRestaurants(value) => filteredRestaurants = value;

  @observable
  String textSearch = '';

  @action
  setTextSearch(value) => textSearch = value;
}
