import 'package:shared_preferences/shared_preferences.dart';

abstract class SignInLocalDataSource {
  saveToken(String value);
}

class SignInLocalDataSourceImpl implements SignInLocalDataSource {
  static const KEY_AUTH_TOKEN = "AUTH_TOKEN";

  SharedPreferences sharedPreferences;

  SignInLocalDataSourceImpl(this.sharedPreferences);

  @override
  saveToken(String value) async {
    sharedPreferences.setString(KEY_AUTH_TOKEN, value);
  }
}
