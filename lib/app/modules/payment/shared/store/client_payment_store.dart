import 'package:marmita_express/app/shared/utils/database/db_model.dart';
import 'package:mobx/mobx.dart';

part 'client_payment_store.g.dart';

class ClientPaymentStore = _ClientPaymentStoreBase with _$ClientPaymentStore;

abstract class _ClientPaymentStoreBase with Store {
  @observable
  Map<String, dynamic>? paymentIntentData;

  @action
  setPaymentIntentDate(value) => paymentIntentData = value;

  @observable
  bool payConfirm = false;

  @action
  setPayConfirm(value) => payConfirm = value;

  @observable
  List<Carts> cartsList = [];

  @action
  setCartList(value) => cartsList = value;

  @observable
  List<Carts> carts = [];

  @action
  setCarts(value) => carts = value;

  @observable
  int len = 0;

  @action
  setLen(value) => len = value;

  @observable
  bool turn = true;

  @action
  setTurn(value) => turn = value;
}
