import 'package:flutter/material.dart';
import 'package:semana_do_flutter/app/controllers/app_controller.dart';

import 'pages/home/home_page.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return ValueListenableBuilder<bool>( // tipo o Observer()
      valueListenable: AppController.instance.themeSwitch,
      builder: (context, isDark, child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Flutter Demo",
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            brightness: isDark ? Brightness.dark : Brightness.light,
          ),
          home: HomePage(),
        );
      }
    );
  }
}