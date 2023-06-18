import 'package:mobx/mobx.dart';

part 'client_home_store.g.dart';

class ClientHomeStore = _ClientHomeStoreBase with _$ClientHomeStore;

abstract class _ClientHomeStoreBase with Store {
  @observable
  int len = 0;

  @action
  setLen(value) => len = value;
}
