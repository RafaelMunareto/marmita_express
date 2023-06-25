import 'package:marmita_express/app/shared/utils/database/db_model.dart';
import 'package:marmita_express/app/shared/utils/model/restaurant.dart';
import 'package:mobx/mobx.dart';

part 'client_store.g.dart';

class ClientStore = _ClientStoreBase with _$ClientStore;

abstract class _ClientStoreBase with Store {
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

  @observable
  int bottomNavigateIndex = 0;

  @action
  setBottomNavigateIndex(value) => bottomNavigateIndex = value;

  @observable
  bool isFormValid = false;

  @action
  setIsFormValid(value) => isFormValid = value;

  @observable
  int deliveryTime = 0;

  @action
  setDeliveryTime(value) => deliveryTime = value;

  @observable
  bool isEmpty = true;

  @action
  setIsEmpty(value) => isEmpty = value;

  @observable
  Map<String, dynamic>? paymentIntentData;

  @action
  setPaymentIntentDate(value) => paymentIntentData = value;

  @observable
  bool payConfirm = false;

  @action
  setPayConfirm(value) => payConfirm = value;

  @observable
  List<Carts> carts = [];

  @action
  setCarts(value) => carts = value;

  @observable
  bool turn = true;

  @action
  setTurn(value) => turn = value;

  @observable
  bool fav = false;

  @action
  setFav(value) => fav = value;

  @observable
  var q = 0;

  @observable
  bool theme = false;

  @action
  setTheme(value) => theme = value;
}
