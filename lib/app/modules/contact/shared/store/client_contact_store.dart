import 'package:mobx/mobx.dart';

part 'client_contact_store.g.dart';

class ClientContactStore = _ClientContactStoreBase with _$ClientContactStore;

abstract class _ClientContactStoreBase with Store {
  @observable
  bool isFormValid = false;

  @action
  setIsFormValid(value) => isFormValid = value;
}
