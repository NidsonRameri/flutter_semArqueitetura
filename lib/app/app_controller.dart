import 'package:flutter/foundation.dart';
import 'package:semana_do_flutter/app/interfaces/local_storage_interface.dart';
import 'package:semana_do_flutter/app/services/shared_local_storage_service.dart';
import 'package:semana_do_flutter/app/viewmodels/change_theme_viewmodel.dart';

class AppController {
  static final AppController instance =
      AppController._(); //protegido de algo ser mudado "final"

  //AppController._(); //protegido contra nova instancia || construtor privado!!!

  AppController._() {
    changeThemeViewModel.init();
  }

  final ChangeThemeViewModel changeThemeViewModel =
      ChangeThemeViewModel(storage: SharedLocalStorageService());

  bool get isDark => changeThemeViewModel.config.themeSwitch.value;

  ValueNotifier<bool> get themeSwitch =>
      changeThemeViewModel.config.themeSwitch;
}
