abstract class ILocalStorage {
  Future get(String key);
  Future clearSharedPreferences();
  Future put(String key, List<String> value);
  Future putSimple(String key, List<String> value);
  Future putObject(String key, String value);
  Future delete(String key);
}
