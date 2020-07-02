import 'package:flutter/material.dart';
import 'package:semana_do_flutter/app/models/apiadvisor_model.dart';
import 'package:semana_do_flutter/app/pages/home/components/custom_switch_widget.dart';
import 'package:semana_do_flutter/app/pages/home/home_controller.dart';
import 'package:semana_do_flutter/app/repositories/apiadvisor_repository.dart';
import 'package:semana_do_flutter/app/services/client_http_service.dart';
import 'package:semana_do_flutter/app/viewmodels/apiadvisor_viewmodel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController(
      ApiadvisorViewModel(ApiadvisorRepository(ClientHttpService())));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.getTime();
        },
        child: Icon(Icons.access_alarm),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            CustomSwitchWidget(),
            ValueListenableBuilder<ApiadvisorModel>(
              valueListenable: controller.time,
              builder: (context, model, child) {
                if (model?.text == null) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }

                return Text(model.text);
              },
            )
          ],
        ),
      ),
    );
  }
}
