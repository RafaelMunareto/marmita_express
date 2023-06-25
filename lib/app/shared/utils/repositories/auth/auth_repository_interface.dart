abstract class IAuthRepository {
  Future saveTheme(bool theme);
  Future<bool> getTheme();
}
