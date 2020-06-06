import 'package:flutter/foundation.dart';
import 'package:semana_do_flutter/app/models/appconfig_model.dart';

class AppController{

  static final AppController instance = AppController._(); //protegido de algo ser mudado "final"
  AppController._(); //protegido contra nova instacia || construtor privado!!!

  //acessar o app config para ver as configarções
  final AppConfigModel config = AppConfigModel();
  bool get isDark => config.themeSwitch.value;
  ValueNotifier<bool> get themeSwitch => config.themeSwitch;

  changeTheme(bool value){
    config.themeSwitch.value = value;
  }
}