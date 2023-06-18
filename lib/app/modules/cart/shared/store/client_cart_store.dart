import 'package:mobx/mobx.dart';

import '../../../../shared/utils/database/db_model.dart';

part 'client_cart_store.g.dart';

class ClientCartStore = _ClientCartStoreBase with _$ClientCartStore;

abstract class _ClientCartStoreBase with Store {
  @observable
  List<Carts> cartsList = [];

  @action
  setCartList(value) => cartsList = value;

  @observable
  double totalPrice = 0;

  @action
  setTotalPrice(value) => totalPrice = value;

  @observable
  int deliveryTime = 0;

  @action
  setDeliveryTime(value) => deliveryTime = value;

  @observable
  int len = 0;

  @action
  setLen(value) => len = value;

  @observable
  bool isEmpty = true;

  @action
  setIsEmpty(value) => isEmpty = value;
}
