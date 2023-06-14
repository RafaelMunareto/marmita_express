import 'dart:async';

import 'package:marmita_express/app/shared/utils/repositories/localstorage/local_storage_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageShare implements ILocalStorage {
  final Completer<SharedPreferences> _instance = Completer<SharedPreferences>();

  _init() async {
    _instance.complete(await SharedPreferences.getInstance());
  }

  LocalStorageShare() {
    _init();
  }

  @override
  Future delete(String key) async {
    var shared = await _instance.future;
    shared.remove(key);
  }

  @override
  Future<void> clearSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  @override
  Future get(String key) async {
    var shared = await _instance.future;
    return shared.getStringList(key);
  }

  @override
  Future put(String key, List<String> value) async {
    var shared = await _instance.future;
    List<String>? existingList = shared.getStringList(key);
    if (existingList == null) {
      // Se não houver dados anteriores, basta salvar a lista atual
      shared.setStringList(key, value);
    } else {
      // Se houver dados anteriores, mescla a lista atual com os dados existentes
      existingList.addAll(value);
      shared.setStringList(key, existingList);
    }
  }

  @override
  Future putObject(String key, String value) async {
    var shared = await _instance.future;
    shared.setString(key, value);
  }
}
