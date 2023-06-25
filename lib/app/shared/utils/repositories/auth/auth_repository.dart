import 'dart:async';
import 'dart:convert';
import 'package:marmita_express/app/shared/utils/repositories/localstorage/local_storage_interface.dart';
import 'package:marmita_express/app/shared/utils/repositories/localstorage/local_storage_share.dart';
import 'auth_repository_interface.dart';

class AuthRepository implements IAuthRepository {
  final ILocalStorage storage = LocalStorageShare();

  @override
  getTheme() async {
    return await storage.get('theme').then((value) {
      if (value != null) {
        return value[0] == 'true' ? true : false;
      }
      return false;
    });
  }

  @override
  Future saveTheme(bool theme) async {
    await storage.putSimple('theme', [jsonEncode(theme)]);
  }
}
