import 'package:flutter/foundation.dart';
import 'package:semana_do_flutter/app/models/apiadvisor_model.dart';
import 'package:semana_do_flutter/app/repositories/apiadvisor_repository_interface.dart';

class ApiadvisorViewModel {
  final apiadvisorModel = ValueNotifier<ApiadvisorModel>(null);
  final IApiAdvisor repository;

  ApiadvisorViewModel(this.repository);

  fill() async {
    apiadvisorModel.value = await repository.getTime();
  }
}
