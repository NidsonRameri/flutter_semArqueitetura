import 'package:flutter/foundation.dart';
import 'package:semana_do_flutter/app/interfaces/local_storage_interface.dart';
import 'package:semana_do_flutter/app/models/appconfig_model.dart';
import 'package:semana_do_flutter/app/services/shared_local_storage_service.dart';

class AppController {
  static final AppController instance =
      AppController._(); //protegido de algo ser mudado "final"

  //AppController._(); //protegido contra nova instancia || construtor privado!!!

  AppController._() {
    storage.get('isDark').then((value) {
      if (value != null) {
        config.themeSwitch.value = value;
      }
    });
  }

  //acessar o app config para ver as configarções
  final AppConfigModel config = AppConfigModel();
  bool get isDark => config.themeSwitch.value;
  ValueNotifier<bool> get themeSwitch => config.themeSwitch;

  final ILocalStorage storage =
      SharedLocalStorageService(); //acessa só o que tem na Interface

  changeTheme(bool value) {
    //sharedPreferences
    config.themeSwitch.value = value;
    storage.put('isDark', value);
  }
}
