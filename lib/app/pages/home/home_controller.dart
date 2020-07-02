import 'package:flutter/cupertino.dart';
import 'package:semana_do_flutter/app/models/apiadvisor_model.dart';
import 'package:semana_do_flutter/app/viewmodels/apiadvisor_viewmodel.dart';

class HomeController {
  final ApiadvisorViewModel viewModel;

  HomeController(this.viewModel);

  ValueNotifier<ApiadvisorModel> get time => viewModel.apiadvisorModel;

  getTime() {
    viewModel.fill();
  }
}
