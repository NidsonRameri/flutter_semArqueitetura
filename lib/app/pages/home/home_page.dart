import 'package:flutter/material.dart';
import 'package:semana_do_flutter/app/pages/home/components/custom_switch_widget.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage')
      ),
      body: Center(
        child: CustomSwitchWidget(),
      ),
    );
  }
}