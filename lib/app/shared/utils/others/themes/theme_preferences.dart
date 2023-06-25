import 'package:marmita_express/app/shared/utils/repositories/localstorage/local_storage_share.dart';

import '../../repositories/localstorage/local_storage_interface.dart';

class ThemePreferences {
  static const String prefKey = 'pref_them_key';
  final ILocalStorage _localStorage = LocalStorageShare();

  setTheme(value) {
    _localStorage.put(prefKey, value);
  }

  getTheme() {
    _localStorage.get(prefKey);
  }
}
