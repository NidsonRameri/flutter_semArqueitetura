

import 'package:flutter/foundation.dart';

class AppController{

  static final AppController instance = AppController._(); //protegido de algo ser mudado "final"
  AppController._(); //protegido contra nova instacia || construtor privado!!!

  final themeSwitch = ValueNotifier<bool>(false); //atua como o mobx

  changeTheme(bool value){
    themeSwitch.value = value;
  }
}