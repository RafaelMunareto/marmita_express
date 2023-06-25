import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marmita_express/app/shared/store/client_store.dart';
import 'package:marmita_express/app/shared/utils/model/user_info.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'contact_store.g.dart';

class ContactStore = ContactStoreBase with _$ContactStore;

abstract class ContactStoreBase with Store {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  ClientStore client = Modular.get();
  late SharedPreferences _prefs;

  ContactStoreBase() {
    loadUserInfo();
  }

  loadUserInfo() async {
    _prefs = await SharedPreferences.getInstance();

    nameController.text = _prefs.getString('name') ?? '';
    emailController.text = _prefs.getString('email') ?? '';
    phoneController.text = _prefs.getString('phone') ?? '';
    addressController.text = _prefs.getString('address') ?? '';

    validateForm();
  }

  saveUserInfo(UserInfo userInfo) async {
    await _prefs.setString('name', userInfo.name);
    await _prefs.setString('email', userInfo.email);
    await _prefs.setString('phone', userInfo.phone);
    await _prefs.setString('address', userInfo.address);
  }

  validateForm() {
    client.setIsFormValid(nameController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        phoneController.text.isNotEmpty &&
        addressController.text.isNotEmpty);
  }

  void saveUserInformation() {
    UserInfo userInfo = UserInfo(
      name: nameController.text,
      email: emailController.text,
      phone: phoneController.text,
      address: addressController.text,
    );
    saveUserInfo(userInfo);
  }
}
